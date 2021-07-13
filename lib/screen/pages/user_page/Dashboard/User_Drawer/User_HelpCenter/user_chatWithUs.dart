import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
// import 'package:file_picker/file_picker.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:kp_mobile/screen/custom/hexcolor.dart';
import 'package:kp_mobile/screen/custom/textStyle.dart';
import 'package:mime/mime.dart';
import 'package:open_file/open_file.dart';
import 'package:uuid/uuid.dart';
import 'package:sizer/sizer.dart';

class UserChatWithUs extends StatefulWidget {
  const UserChatWithUs({Key key}) : super(key: key);

  @override
  _UserChatWithUsState createState() => _UserChatWithUsState();
}

class _UserChatWithUsState extends State<UserChatWithUs> {
  List<types.Message> _messages = [];
  final _user = const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c');

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAtachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 144,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  _handleImageSelection();
                },
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Photo'),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  // _handleFileSelection();
                },
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('File'),
                ),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Cancel'),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // void _handleFileSelection() async {
  //   final result = await FilePicker.platform.pickFiles(
  //     type: FileType.any,
  //   );

  //   if (result != null) {
  //     final message = types.FileMessage(
  //       author: _user,
  //       createdAt: DateTime.now().millisecondsSinceEpoch,
  //       name: result.files.single.name,
  //       id: const Uuid().v4(),
  //       mimeType: lookupMimeType(result.files.single.path ?? ''),
  //       size: result.files.single.size,
  //       uri: result.files.single.path ?? '',
  //     );

  //     _addMessage(message);
  //   } else {
  //     // User canceled the picker
  //   }
  // }

  void _handleImageSelection() async {
    final result = await ImagePicker().getImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);
      final name = result.path.split('/').last;

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    } else {
      // User canceled the picker
    }
  }

  void _handleMessageTap(types.Message message) async {
    if (message is types.FileMessage) {
      await OpenFile.open(message.uri);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = _messages[index].copyWith(previewData: previewData);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        _messages[index] = updatedMessage;
      });
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    setState(() {
      _messages = messages;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Pallete.kpBlue,
        ),
        backgroundColor: Pallete.kpWhite,
        elevation: 3,
        centerTitle: true,
        title: Text(
          "Chat with us",
          style: CustomTextStyle.textStyleBlue18,
        ),
      ),
      backgroundColor: Pallete.kpWhite,
      body: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
                width: 100.h,
                height: 100.h,
                child: Image.asset(
                  "assets/bg_chatwithus.png",
                  fit: BoxFit.fill,
                )),
          ),
          Chat(
            theme: DefaultChatTheme(
              inputBackgroundColor: Pallete.kpWhite,
              inputTextColor: Pallete.kpBlack,
              sentMessageBodyTextStyle: TextStyle(
                color: Pallete.kpBlack,
              ),
              receivedMessageBodyTextStyle: TextStyle(
                color: Pallete.kpWhite,
              ),
              backgroundColor: Colors.transparent,
              secondaryColor: Pallete.kpBlue,
              primaryColor: Pallete.kpGreyOkpGreypacity2,
              messageBorderRadius: 10,
              dateDividerTextStyle: TextStyle(
                color: Pallete.kpBlack,
              ),
              userNameTextStyle: TextStyle(
                color: Pallete.kpWhite,
              ),
              userAvatarTextStyle: TextStyle(
                color: Pallete.kpWhite,
              ),
              userAvatarNameColors: [
                Pallete.kpWhite,
              ],
            ),
            showUserAvatars: true,
            showUserNames: false,
            messages: _messages,
            onAttachmentPressed: _handleAtachmentPressed,
            onMessageTap: _handleMessageTap,
            onPreviewDataFetched: _handlePreviewDataFetched,
            onSendPressed: _handleSendPressed,
            user: _user,
          ),
        ],
      ),
    );
  }
}

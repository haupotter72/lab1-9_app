import 'package:quiz_app/models/question.dart';

const List<Question> questions = [
  Question(
    question: "1. Flutter là gì?",
    options: [
      "Một ngôn ngữ lập trình",
      "Một framework phát triển ứng dụng di động",
      "Một IDE phát triển phần mềm",
      "Một hệ điều hành di động",
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    question: "2. Widget nào được sử dụng để xếp chồng các widget khác lên nhau?",
    options: [
      "Row",
      "Column",
      "Stack",
      "Container",
    ],
    correctAnswerIndex: 2,
  ),
  Question(
    question: "3. Widget nào được sử dụng để căn giữa một widget trong Flutter?",
    options: [
      "Center",
      "Padding",
      "Align",
      "SizedBox",
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    question: "4. Để thêm khoảng cách giữa các widget, bạn có thể sử dụng widget nào?",
    options: [
      "Margin",
      "Padding",
      "SizedBox",
      "Spacing",
    ],
    correctAnswerIndex: 2,
  ),
  Question(
    question: "5. Lệnh nào được sử dụng để chạy ứng dụng Flutter trên thiết bị thật hoặc giả lập?",
    options: [
      "flutter test",
      "flutter run",
      "flutter build",
      "flutter create",
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    question: "6. Thuộc tính nào của Text widget được sử dụng để định dạng kiểu chữ (bold, italic)?",
    options: [
      "style",
      "fontWeight",
      "textAlign",
      "fontStyle",
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    question: "7. Widget nào được sử dụng để tạo ra các thành phần vuốt sang trái hoặc phải để xoá hoặc hoàn thành một nhiệm vụ?",
    options: [
      "Dismissible",
      "ListTile",
      "GestureDetector",
      "Draggable",
    ],
    correctAnswerIndex: 0,
  ),
  Question(
    question: "8. Hàm nào được gọi để làm mới lại giao diện khi có sự thay đổi trong StatefulWidget?",
    options: [
      "refresh()",
      "setState()",
      "rebuild()",
      "repaint()",
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    question: "9. Để hiển thị danh sách với số lượng lớn các mục, widget nào sau đây là tốt nhất?",
    options: [
      "Column",
      "ListView",
      "Stack",
      "GridView",
    ],
    correctAnswerIndex: 1,
  ),
  Question(
    question: "10. Widget nào dùng để hiển thị một hình ảnh trong Flutter?",
    options: [
      "Picture",
      "Photo",
      "Image",
      "Asset",
    ],
    correctAnswerIndex: 2,
  ),
];

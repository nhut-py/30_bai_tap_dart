import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Bạn cần gì? \n");
  while (true) {
    var input = stdin.readLineSync();
    int numbers = int.parse(input!);
    switch (numbers) {
      case 1:
        // Bài tập 1
        stdout.write("Tên bạn là gì?");
        String name = stdin.readLineSync()!;
        print("Xin chào, $name! Bạn bao nhiêu tuổi?");
        int age = int.parse(stdin.readLineSync()!);
        int yearsToHunderd = 100 - age;
        print("$name, Bạn còn $yearsToHunderd năm nữa là bạn được 100 tuổi!");
        break;
      case 2:
        // Bài tập 2
        stdout.write("Vui lòng nhập một số nguyên \n");
        var n = stdin.readLineSync();
        int nhap = int.parse(n!);
        if (nhap % 2 == 0) {
          stdout.write("Số $n là một số chẵn");
        } else {
          stdout.write("Số $n là số lẻ");
        }
        break;
      case 3:
        // Bài tập 3
        stdout.write("Vui lòng nhập một số nguyên \n");
        var n = stdin.readLineSync();
        int nhap = int.parse(n!);
        for (int i = 0; i < nhap; i++) {
          if (i % 2 == 1) print(i);
        }
        break;
      case 4:
        // Bài tập 4
        stdout.write("Vui lòng nhập một số nguyên \n");
        var n = stdin.readLineSync();
        int nhap = int.parse(n!);
        for (int i = 0; i < nhap; i++) {
          if (i % 2 == 1 && i != 5 && i != 7 && i != 93) print(i);
        }
        break;
      case 5:
        // Bài tập 5
        stdout.write("Vui lòng nhập a \n");
        double a = double.parse(stdin.readLineSync()!);
        stdout.write("Vui lòng nhập b \n");
        double b = double.parse(stdin.readLineSync()!);
        stdout.write("Vui lòng nhập c \n");
        double c = double.parse(stdin.readLineSync()!);
        double max = a;
        if (max < b) max = b;
        if (max < c) max = c;
        print("Số lớn nhất là $max");
        break;
      case 6:
        // Bài tập 6
        stdout.write("Vui lòng nhập a \n");
        double a = double.parse(stdin.readLineSync()!);
        stdout.write("Vui lòng nhập b \n");
        double b = double.parse(stdin.readLineSync()!);
        if (a * b > 0) {
          if (a > 0) {
            stdout.write("Hai số là số dương");
          } else {
            stdout.write("Hai số là số âm");
          }
        } else {
          stdout.write("Hai số khác dấu");
        }
        break;
      case 7:
        // Bài tập 7
        stdout.write("Vui lòng nhập n \n");
        int n = int.parse(stdin.readLineSync()!);
        List<String> chu = [
          'không',
          'một',
          'hai',
          'ba',
          'bốn',
          'năm',
          'sáu',
          'bảy',
          'tám',
          'chín'
        ];
        if (n % 10 != 0) {
          if (n ~/ 1000 == 0) {
            print(
                '${chu[(n - (n ~/ 1000) * 1000) ~/ 100]} trăm ${chu[(n - (n ~/ 100) * 100) ~/ 10]} mươi ${chu[n % 10]}.');
          } else {
            print(
                '${chu[n ~/ 1000]} ngàn ${chu[(n - (n ~/ 1000) * 1000) ~/ 100]} trăm ${chu[(n - (n ~/ 100) * 100) ~/ 10]} mươi ${chu[n % 10]}.');
          }
        } else {
          print(
              '${chu[n ~/ 1000]} ngàn ${chu[(n - (n ~/ 1000) * 1000) ~/ 100]} trăm ${chu[(n - (n ~/ 100) * 100) ~/ 10]} mươi.');
        }
        break;
      case 8:
        // Bài tập 8
        final random = Random();
        int n = random.nextInt(100);
        int so_lan_doan = 0;
        while (so_lan_doan < 3) {
          stdout.write("Vui lòng nhập số dự đoán \n");
          int so_du_doan = int.parse(stdin.readLineSync()!);
          so_lan_doan++;
          if (so_du_doan == n) {
            stdout.write("Chúc mừng bạn đoán đúng ");
            break;
          } else if (so_du_doan > n) {
            stdout.write("Số dự đoán lớn hơn n\n");
          } else {
            stdout.write("Số dự đoán nhỏ hơn n\n");
          }
        }
        if (so_lan_doan == 3) {
          stdout.write("Hết lược số đúng là $n");
        }
        break;
      case 9:
        // Bài tập 9
        stdout.write(
            "Vui lòng nhập ngày tháng năm theo định đạng YYYY-MM-DD, ví dụ 2001-03-14:  \n");
        DateTime day = DateTime.parse(stdin.readLineSync()!);
        switch (day.weekday) {
          case 1:
            stdout.write("Ngày $day là thứ 2");
            break;
          case 2:
            stdout.write("Ngày $day là thứ 3");
            break;
          case 3:
            stdout.write("Ngày $day là thứ 4");
            break;
          case 4:
            stdout.write("Ngày $day là thứ 5");
            break;
          case 5:
            stdout.write("Ngày $day là thứ 6");
            break;
          case 6:
            stdout.write("Ngày $day là thứ 7");
            break;
          case 7:
            stdout.write("Ngày $day là Chủ nhật");
            break;
        }
        break;
      case 10:
        // Bài tập 10
        for (int i = 1; i <= 9; i++) {
          for (int j = 1; j <= 9; j++) {
            print('$i x $j = ${i * j}');
          }
          print('-----------------------');
        }
        break;
      case 11:
        // Bài tập 11
        for (int i = 65; i <= 90; i++) {
          print(String.fromCharCode(i));
        }
        break;
      case 12:
        // Bài tập 12
        stdout.write("Vui lòng nhập số nguyên n: ");
        int n = int.parse(stdin.readLineSync()!);
        if (n < 1) {
          stdout.write("$n!=1");
        } else {
          int temp = n;
          for (int i = 1; i < n; i++) {
            temp = temp * i;
          }
          stdout.write("$n! = $temp ");
        }
        break;
      case 13:
        // Bài tập 13
        stdout.write('Mời bạn nhập số nguyên thứ nhất: ');
        int a = int.parse(stdin.readLineSync()!);
        stdout.write('Mời bạn nhập số nguyên thứ hai: ');
        int b = int.parse(stdin.readLineSync()!);
        while (a * b != 0) {
          if (a > b) {
            a = a % b; // a = a % b
          } else {
            b = b % a;
          }
        }
        print(a + b);
        break;
      case 14:
        // Bài tập 14
        stdout.write('Mời bạn nhập số cần kiểm tra: ');
        int a = int.parse(stdin.readLineSync()!);
        bool isPrime = true;
        int t = sqrt(a).floor();
        for (int i = 2; i <= t; i++) {
          if (a % i == 0) {
            isPrime = false;
            break;
          }
        }
        isPrime
            ? print('Số $a là số nguyên tố.')
            : print('Số $a không là số nguyên tố.');
        break;
      case 15:
        // Bài tập 15
        stdout.write('Mời bạn nhập số n: ');
        int a = int.parse(stdin.readLineSync()!);
        int fibo(int n) {
          if (n == 1 || n == 2) return 1;
          return fibo(n - 1) + fibo(n - 2);
        }
        stdout.write("Kết quả là: " + fibo(a).toString());
        break;
      case 16:
        // Bài tập 16
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        int tong = 0;
        for (int i = 1; i <= a; i += 2) {
          tong += i;
        }
        stdout.write('Tổng số lẻ từ 1 đến $a là: $tong');
        break;
      case 17:
        // Bài tập 17
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        int tich = 1;
        for (int i = 1; i <= a; i += 2) {
          tich *= i;
        }
        stdout.write('Tích số lẻ từ 1 đến $a là: $tich');
        break;
      case 18:
        // Bài tập 18
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        int tong = 0;
        for (int i = 2; i <= a; i += 2) {
          tong += i;
        }
        stdout.write('Tổng số chẵn từ 0 đến $a là: $tong');
        break;
      case 19:
        // Bài tập 19
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        int tich = 1;
        for (int i = 2; i <= a; i += 2) {
          tich *= i;
        }
        stdout.write('Tích số chẵn từ 2 đến $a là: $tich');
        break;
      case 20:
        // Bài tập 20
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        double tong = 0;
        for (int i = 1; i <= a; i++) {
          tong += 1 / i;
        }
        stdout.write("Tổng từ 1 đến 1/$a là: $tong");
        break;
      case 21:
        // Bài tập 21
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        double tich = 1;
        for (int i = 1; i <= a; i++) {
          tich *= 1 / i;
        }
        stdout.write("Tích từ 1 đến 1/$a là: $tich");
        break;
      case 22:
        // Bài tập 22
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        double tong = 0;
        for (int i = 1; i <= a; i += 2) {
          tong += 1 / i;
        }
        stdout.write("Tổng phân số lẻ 1 đến 1/$a là: $tong");
        break;
      case 23:
        // Bài tập 23
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        double tong = 1;
        for (int i = 2; i <= a; i += 2) {
          tong += 1 / i;
        }
        stdout.write("Tổng phân số chẵn 1 đến 1/$a là: $tong");
        break;
      case 24:
        // Bài tập 24
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        double tich = 1;
        for (int i = 1; i <= a; i += 2) {
          tich *= 1 / i;
        }
        stdout.write("Tích phần tử lẻ 1 đến 1/$a là: $tich");
        break;
      case 25:
        // Bài tập 25
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        double tich = 1;
        for (int i = 2; i <= a; i += 2) {
          tich *= 1 / i;
        }
        stdout.write("Tích phần tử chẵn 1 đến 1/$a là: $tich");
        break;
      case 26:
        // Bài tập 25
        stdout.write('Mời bạn nhập số a: ');
        int a = int.parse(stdin.readLineSync()!);
        stdout.write('Mời bạn nhập số b: ');
        int b = int.parse(stdin.readLineSync()!);
        stdout.write('Mời bạn nhập số c: ');
        int c = int.parse(stdin.readLineSync()!);
        double delta = b * b - 4 * a * c.toDouble();
        if (a == 0) {
          stdout.write("Điều kiện a khác 0");
        } else if (delta < 0) {
          stdout.write("Phương trình vô nghiệm");
        } else if (delta == 0) {
          double x = -b / (2 * a);
          stdout.write("Phương trình có nghiệm kép x = $x");
        } else {
          double x1 = (-b + sqrt(delta)) / (2 * a);
          double x2 = (-b - sqrt(delta)) / (2 * a);
          stdout.write("Phương trình có 2 nghiệm x1 = $x1, x2 = $x2");
        }
        break;
      case 27:
        // Bài tập 26
        stdout.write('Mời bạn nhập số nguyên dương n: ');
        int n = int.parse(stdin.readLineSync()!);
        int count = 0;
        int temp = n;
        if (n == 0) count = 1;
        while (temp != 0) {
          count++;
          temp = (temp / 10).toInt();
        }
        stdout.write('Chiều dài chữ số của $n là $count: ');
        break;
      case 28:
        stdout.write("Nhập phương trình theo cấu trúc ax+b=0\n");
        stdout.write("Nhập phần tử a ");
        int a = int.parse(stdin.readLineSync()!);
        stdout.write("Nhập phần tử b ");
        int b = int.parse(stdin.readLineSync()!);
        if (a == 0 && b != 0) {
          stdout.write("Phương trình vô nghiệm");
        } else if (a == 0 && b == 0) {
          stdout.write("Phương trình vô số nghiệm");
        } else {
          double x = -b / a;
          stdout.write("Phương trình có nghiệm x = $x");
        }
        break;
      case 29:
        List<int> a = [];
        int n;
        do {
          stdout.write("Nhập số lượng phần tử n: ");
          n = int.parse(stdin.readLineSync()!);
          if (n <= 0) {
            stdout.write("Nhập số lượng phần tử n: ");
            n = int.parse(stdin.readLineSync()!);
          }
        } while (n <= 0);
        for (int i = 0; i < n; i++) {
          stdout.write("\nNhap a[$i] = ");
          a.add(int.parse(stdin.readLineSync()!));
        }
        print("Sau khi sắp xếp");
        int tg;
        for (int i = 0; i < n - 1; i++) {
          for (int j = i + 1; j < n; j++) {
            if (a[i] < a[j]) {
              // Hoan vi 2 so a[i] va a[j]
              tg = a[i];
              a[i] = a[j];
              a[j] = tg;
            }
          }
        }
        for (int i = 0; i < n; i++) {
          print(a[i]);
        }
        break;
      case 30:
        List<int> a = [];
        int n;
        do {
          stdout.write("Nhập số lượng phần tử n: ");
          n = int.parse(stdin.readLineSync()!);
          if (n <= 0) {
            stdout.write("Nhập số lượng phần tử n: ");
            n = int.parse(stdin.readLineSync()!);
          }
        } while (n <= 0);
        for (int i = 0; i < n; i++) {
          stdout.write("\nNhap a[$i] = ");
          a.add(int.parse(stdin.readLineSync()!));
        }
        print("Sau khi sắp xếp");
        int tg;
        for (int i = 0; i < n - 1; i++) {
          for (int j = i + 1; j < n; j++) {
            if (a[i] > a[j]) {
              // Hoan vi 2 so a[i] va a[j]
              tg = a[i];
              a[i] = a[j];
              a[j] = tg;
            }
          }
        }
        for (int i = 0; i < n; i++) {
          print(a[i]);
        }
        break;
      default:
        print('Không có bài tập đó, vui lòng nhập lại');
    }
  }
}

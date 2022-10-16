import 'package:flutter/material.dart';
import 'package:qnb_finansbank_w1_d3/second_page.dart';

class ScreenLifecyle extends StatefulWidget {
  const ScreenLifecyle({super.key});

  @override
  State<ScreenLifecyle> createState() => _ScreenLifecyleState();
}

class _ScreenLifecyleState extends State<ScreenLifecyle> {
  //  initState yalnızca bir kez çağırılır. super.initState() olarak adlandrılmalıdır.
  // widget oluşturulduğunda çağıraln ilk yöntemdir.
  //**** */
// 1.
  @override
  void initState() {
    super.initState();
    print("initState");
  }

  // bu yöntem, pencere öğesi il kez oluşturuldupunda initState'den hemen sonra çağırılır.
  // 2.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

// bu metot sıklıkla çağırılı. gereklidir ve widget döndürmesi gerekiyor.
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: const Center(
        child: Text('Lifecycle'),
      ),
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const SecondScreen())))),
      ),
    );
  }

  /*
    Ana widget değişirse ve bu pencere öğesini yeniden oluşturması gerekiyorsa ( ona farklı veriler vermesi gerekir),
    ancak aynı runtimeType ile yeniden oluşturulduktan sonra bu yöntem çağrılır.
    Bunun nedeni Flutter'ın uzun ömürlü olan durumu yeniden kullanmasıdır.
    Bu durumda, initState'de yaptığınız gibi bazı verileri yeniden başlatmak isteyebiliriz.
    */

  @override
  void didUpdateWidget(covariant ScreenLifecyle oldWidget) {
    super.didUpdateWidget(oldWidget);

    print('didUpdateWidget');
  }

  // state'lerimi dinamik bir şekilde güncellemeye yarar.
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  /*
    State ağaçtan kaldırıldığında deactivate çağrılır,
    ancak mevcut state değişikliği bitmeden yeniden yerleştirilebilir.
    Bu yöntem temel olarak, State nesnelerinin bir ağaçtaki bir noktadan diğerine taşınabilmesi nedeniyle mevcuttur.
    */

  @override
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  /* 

  Dispose, kalıcı olan State nesnesi kaldırıldığında çağrılır.
    Bu yöntem, tüm animasyonları, akışları vb. iptal etmeniz gereken yerdir.
  */

  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}

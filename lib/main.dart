import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';
import 'package:carousel_slider/carousel_slider.dart';

const Color appColor = Colors.yellow;

const List<String> imgList = [
  "images/laptop1.png",
  "images/laptop2.png",
  "images/laptop3.png",
  "images/laptop4.png",
  "images/laptop5.png",
  "images/laptop6.png",
];

const List<String> imgHomeList = [
  "images/descuentos1.png",
  "images/descuentos2.png",
  "images/descuentos3.png",
  "images/descuentos4.png",
];

const List<String> creditData = [
  "Número de la tarjeta",
  "Nombre y apellido",
  "Fecha de Vencimiento",
  "Código de seguridad"
];

final List<Widget> tarjetaData = creditData
    .map((item) => Container(
          child: Container(
            padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
            child: TextField(
              decoration: InputDecoration(
                hintText: item,
              ),
            ),
          ),
        ))
    .toList();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Open(),
      '/home/': (context) => Home(),
      '/login/': (context) => Login(),
      '/login2/': (context) => Login2(),
      '/signup/': (context) => SignUp(),
      '/home/': (context) => Home(),
      '/articulo/': (context) => Articulo(),
      '/carrito/': (context) => Carrito(),
      '/tarjeta/': (context) => Tarjeta(),
      '/domicilio/': (context) => Domicilio(),
      '/compra/exitosa/': (context) => CompraExitosa(),
    });
  }
}

class Open extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarHeight: 10,
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                TextButton(
                    child: Text('Omitir'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home/');
                    }),
                Container(height: 100),
                Text(
                  '¿Qué estás esperando?',
                  style: TextStyle(fontSize: 28),
                ),
                Text('¡Es gratis!'),
                Container(height: 150),
                ButtonBlue(
                    text: 'Registrarme con mi e-mail', route: '/signup/'),
                Container(
                  height: 8,
                ),
                ButtonWhite(text: 'Ya tengo cuenta', route: '/login/'),
                Container(height: 100),
                Center(child: TermsAndConditionsWelcome())
              ],
            )));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appColor,
            iconTheme: IconThemeData(color: Colors.black)),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  '¡Hola! Para seguir, ingresa tu e-mail o usuario',
                  style: TextStyle(fontSize: 28),
                ),
                Container(height: 50),
                TextInput(text: 'E-mail o usuario'),
                Container(height: 50),
                ButtonBlue(text: 'Continuar', route: '/login2/'),
                Container(
                  height: 8,
                ),
                ButtonWhite(text: 'Crear cuenta', route: '/signup/'),
              ],
            )));
  }
}

class Login2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appColor,
            iconTheme: IconThemeData(color: Colors.black)),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ahora, tu clave',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 28),
                ),
                Container(height: 50),
                TextInput(text: 'Clave'),
                Container(height: 50),
                ButtonBlue(text: 'Ingresar', route: '/home/'),
                Container(
                  height: 8,
                ),
                ButtonWhite(text: 'No sé mi clave'),
                Container(height: 180),
                ButtonWhite(text: 'No soy CORREO@CORREO.COM')
              ],
            )));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          Container(
              height: 170,
              child: DrawerHeader(
                  child: Column(children: [
                    Row(children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 50,
                      ),
                      Container(width: 10),
                      Column(children: [
                        Text(
                          'Ingresa a tu cuenta',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Container(height: 5),
                        Container(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              'Podrás ver detalles de envío '
                              '\ny personalizar tu experiencia',
                              textAlign: TextAlign.left,
                            ))
                      ])
                    ]),
                    Container(height: 20),
                    Container(
                        height: 30,
                        child: ButtonBlue(text: 'Ingresar', route: '/login/')),
                  ]),
                  decoration: BoxDecoration(
                    color: appColor,
                  ))),
          DrawerIcon(icon: Icons.home_outlined, text: 'Inicio'),
          DrawerIcon(icon: Icons.search, text: 'Buscar'),
          DrawerIcon(icon: Icons.shopping_bag_outlined, text: 'Mis compras'),
          DrawerIcon(icon: Icons.account_circle_outlined, text: 'Mi cuenta'),
          DrawerIcon(icon: Icons.shopping_basket_outlined, text: 'Vender'),
          DrawerIcon(icon: Icons.history, text: 'Historial'),
          Divider(),
          DrawerIcon(icon: Icons.list, text: 'Categorias'),
          DrawerIcon(icon: Icons.shopping_bag_outlined, text: 'Supermercado'),
          DrawerIcon(icon: Icons.storefront, text: 'Tiendas oficiales'),
          Divider(),
          DrawerIcon(icon: Icons.help_outline, text: 'Categorias'),
          Divider(),
          DrawerIcon(icon: Icons.info_outline, text: 'Acerca de Mercado Libre')
        ])),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: appColor,
          actions: <Widget>[
            Container(
                width: 300,
                padding: EdgeInsets.all(5),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 8.0, top: 12.0),
                    hintText: 'Buscar en Mercado Libre',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20.7),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20.7),
                    ),
                  ),
                )),
            Container(width: 10),
            IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              onPressed: () => {Navigator.pushNamed(context, '/carrito/')},
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Container(
                padding:
                    EdgeInsets.only(right: 13, left: 13, top: 30, bottom: 30),
                child: Column(children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      enableInfiniteScroll: true,
                      height: 150,
                      initialPage: 0,
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: true,
                    ),
                    items: imgHomeList
                        .map((item) => Container(
                              child: Center(
                                  child: Image(
                                      image: AssetImage(item),
                                      width: 350,
                                      fit: BoxFit.cover,
                                      height: 200)),
                            ))
                        .toList(),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Row(
                        children: [
                          HomeFloatingButton(
                              icon: Icons.qr_code, text: 'Pagar con QR'),
                          HomeFloatingButton(
                              icon: Icons.label_important, text: 'Ofertas'),
                          HomeFloatingButton(
                              icon: Icons.shopping_basket_outlined,
                              text: 'Súper'),
                          HomeFloatingButton(
                              icon: Icons.emoji_transportation_sharp,
                              text: 'Autos y otros'),
                          HomeFloatingButton(
                              icon: Icons.more_horiz, text: 'Ver más'),
                        ],
                      )),
                  HomeSingleComponent(
                      textoArriba: 'Visto reciéntemente',
                      textoAbajo: 'Ver historial de navegación',
                      height: 550,
                      body: HomeBigArticle(
                          image: 'images/laptop1.png',
                          title: 'Laptop Huawei Matebook 13',
                          price: '\$16,999')),
                  Container(height: 40),
                  HomeSingleComponent(
                      textoArriba: 'Ofertas del día',
                      textoAbajo: 'Ver todas las ofertas',
                      height: 550,
                      body: HomeBigArticle(
                          image: 'images/airpods.png',
                          title: 'Airpods Apple con estuche',
                          price: '\$3,599')),
                  Container(height: 40),
                  HomeSingleComponent(
                      textoArriba: 'Inspirado en lo último que viste',
                      textoAbajo: 'Ver más',
                      height: 550,
                      body: ListOfArticles()),
                ]))));
  }
}

class Articulo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: appColor,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/carrito/');
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 10),
                  Text('Nuevo | 889 vendidos',
                      style: TextStyle(color: Colors.grey)),
                  Container(height: 8),
                  Text('Laptop Huawei Mateboox 13',
                      style: TextStyle(fontSize: 25)),
                  Row(children: [
                    Text('por '),
                    Container(
                        height: 15,
                        child: TextButton(
                          child: Text(
                            'Tienda Oficial Huawei México',
                            style: TextStyle(color: Colors.blue),
                          ),
                          onPressed: () {},
                        ))
                  ]),
                  Container(height: 8),
                  Row(children: [
                    SmoothStarRating(
                        rating: 3.5,
                        size: 12,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0),
                    Container(width: 10),
                    Text('(169)',
                        style: TextStyle(color: Colors.blue, fontSize: 12))
                  ]),
                  Container(height: 10),
                  Container(
                      height: 350,
                      child: Scaffold(
                          floatingActionButton: Container(
                              height: 50,
                              width: 50,
                              child: FloatingActionButton(
                                  backgroundColor: Colors.grey,
                                  onPressed: () => {},
                                  child: Icon(
                                    Icons.share,
                                    color: Colors.black,
                                  ))),
                          /*body: Center(child: Image(image: AssetImage("images/laptop1.png"),
                  height: 340,)),*/
                          body: CarouselSlider(
                            options: CarouselOptions(
                                enableInfiniteScroll: false,
                                height: height,
                                initialPage: 0,
                                viewportFraction: 0.8),
                            items: imgList
                                .map((item) => Container(
                                      child: Center(
                                          child: Image(
                                              image: AssetImage(item),
                                              width: 800,
                                              fit: BoxFit.cover)),
                                    ))
                                .toList(),
                          ))),
                  Container(height: 20),
                  Text('\$ 36,999',
                      style: TextStyle(
                          fontSize: 17,
                          decoration: TextDecoration.lineThrough)),
                  Row(children: [
                    Text('\$ 30,599', style: TextStyle(fontSize: 35)),
                    Container(width: 10),
                    Text('11% OFF',
                        style: TextStyle(color: Colors.green, fontSize: 20))
                  ]),
                  Container(height: 5),
                  Row(children: [
                    Text('en', style: TextStyle(fontSize: 18)),
                    Text(' 12x \$ 1,333 sin interés',
                        style: TextStyle(color: Colors.green, fontSize: 20))
                  ]),
                  Container(height: 20),
                  Row(children: [
                    Icon(Icons.delivery_dining, color: Colors.green, size: 30),
                    Container(
                      width: 20,
                    ),
                    Text('Llega gratis el miércoles',
                        style: TextStyle(fontSize: 18, color: Colors.green))
                  ]),
                  Container(height: 20),
                  Row(children: [
                    Icon(Icons.arrow_back, color: Colors.green, size: 30),
                    Container(
                      width: 20,
                    ),
                    Text('Devolución gratis',
                        style: TextStyle(fontSize: 18, color: Colors.green))
                  ]),
                  Container(height: 20),
                  ButtonBlue(text: 'Comprar Ahora'),
                  Container(height: 7),
                  ButtonWhite(text: 'Agregar al carrito')
                ],
              )),
        ));
  }
}

class Carrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: appColor,
                bottom: TabBar(
                    labelStyle: TextStyle(fontSize: 15),
                    labelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Carrito (3)'),
                      Tab(text: 'Guardados (0)'),
                    ])),
            body: TabBarView(children: [
              Column(children: [
                Expanded(
                  flex: 6,
                  child: ListOfCarrito(),
                ),
                Expanded(
                    flex: 4,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  flex: 7,
                                  child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/domicilio/');
                                        },
                                        child: Text(
                                            'Agregar domicilio de entrega',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 16)),
                                      ))),
                              Expanded(
                                  flex: 3,
                                  child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('Gratis      ',
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 17))))
                            ]),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              child: Text(
                                'Agregar tarjeta o medio de pago',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/tarjeta/');
                              },
                            )),
                        Divider(),
                        Row(children: [
                          Expanded(
                              flex: 6,
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text('   Total con envío',
                                      style: TextStyle(fontSize: 22)))),
                          Expanded(
                              flex: 4,
                              child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text('\$18, 067   ',
                                      style: TextStyle(fontSize: 22))))
                        ]),
                        Container(height: 15),
                        ButtonBlue(
                            text: 'Comprar ahora', route: '/compra/exitosa/')
                      ]),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                    ))
              ]),
              Padding(
                  padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Column(children: [
                    Text('No tienes productos guardados',
                        style: TextStyle(fontSize: 25)),
                    Container(height: 10),
                    Text(
                      'Si aún no estás decidido en comprar algún producto de tu'
                      'carrito, puedes dejarlo aquí',
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.center,
                    )
                  ])),
            ])));
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appColor,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 25),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Completa tus datos',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ))),
                  Container(height: 30),
                  TextInput(text: 'Nombre'),
                  Container(height: 5),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Ingrésalo tal como figura en tu documento')),
                  Container(height: 15),
                  TextInput(text: 'Apellido'),
                  Container(height: 5),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Ingrésalo tal como figura en tu documento')),
                  Container(height: 15),
                  TextInput(text: 'E-mail'),
                  Container(height: 5),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Asegúrate de tener acceso a este e-mail.')),
                  Container(height: 15),
                  TextInput(text: 'Clave'),
                  Container(height: 10),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                          'Tu clave debe tener entre 6 y 20 caracteres y '
                          'al menos uno de ellos debe ser especial (por ejemplo: '
                          '?.\$). No incluyas tu nombre, apellido o e-mail, ni '
                          'caracteres idénticos consecutivos')),
                  Container(height: 30),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(0),
                    title: TermsAndConditionsSignUp(),
                    value: false,
                    controlAffinity: ListTileControlAffinity.leading,
                    onChanged: (context) {},
                  ),
                  Container(height: 30),
                  ButtonBlue(text: 'Continuar', route: '/home/')
                ]))));
  }
}

class Domicilio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appColor,
            iconTheme: IconThemeData(color: Colors.black),
            title: Align(
                alignment: Alignment.center,
                child: Text('Agregar Domicilio',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold))),
            actions: <Widget>[
              TextButton(
                child: Text('Guardar',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                onPressed: () {},
              )
            ]),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(15),
                child: Column(children: [
                  LineOfDomicilio(text: 'Nombre y apellido:'),
                  LineOfDomicilio(text: 'Código postal'),
                  LineOfDomicilio(text: 'Estado:'),
                  LineOfDomicilio(text: 'Municipio:'),
                  LineOfDomicilio(text: 'Colonia / Asentamiento:'),
                  LineOfDomicilio(text: 'Calle:'),
                  LineOfDomicilio(text: 'Número externo:'),
                  LineOfDomicilio(text: 'Número interno:'),
                  LineOfDomicilio(text: 'Entre calles'),
                  LineOfDomicilio(text: 'Referencias'),
                  LineOfDomicilio(text: 'Teléfono de Contacto'),
                ]))));
  }
}

class Tarjeta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(backgroundColor: appColor, toolbarHeight: 0),
        body: ListView(
          children: <Widget>[
            Container(
                color: appColor,
                height: 300,
                child: Column(children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          icon: Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          })),
                  Image(image: AssetImage('images/tarjeta.png'))
                ])),
            Container(
                child: Column(
              children: <Widget>[
                CarouselSlider(
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                  ),
                  items: tarjetaData,
                ),
              ],
            )),
            Container(
              padding: EdgeInsets.all(25),
              child: ButtonBlue(text: 'Agregar'),
            ),
          ],
        ));
  }
}

class CompraExitosa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          backgroundColor: appColor,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.check_circle_outline, size: 70, color: Colors.white),
          Text('Compra completada \nsatisfactoriamente',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.white))
        ])));
  }
}

// --------------------------------------------------------------------------

class ButtonBlue extends StatelessWidget {
  final String text;
  final String route;
  ButtonBlue({required this.text, this.route = ''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {
              if (this.route != "") {
                Navigator.pushNamed(context, this.route);
              }
            },
            child: Text(text, style: TextStyle(fontSize: 18))));
  }
}

class ButtonWhite extends StatelessWidget {
  final String text;
  final String route;
  ButtonWhite({required this.text, this.route = ''});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            if (this.route != "") {
              Navigator.pushNamed(context, this.route);
            }
          },
          child: Text(text, style: TextStyle(color: Colors.blue, fontSize: 18)),
        ));
  }
}

class TextInput extends StatelessWidget {
  final String text;
  TextInput({required this.text});

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: true, decoration: InputDecoration(labelText: text));
  }
}

class DrawerIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  DrawerIcon({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => {Navigator.pop(context)},
        title: Row(children: [
          Icon(this.icon),
          Container(width: 10),
          Text(this.text)
        ]));
  }
}

class TermsAndConditionsSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.black, fontSize: 16);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(text: 'Acepto los '),
          TextSpan(
            text: 'Términos y condiciones ',
            style: linkStyle,
          ),
          TextSpan(text: 'y autorizo el uso de mis datos de acuerdo a la '),
          TextSpan(
            text: 'Declaración de Privacidad',
            style: linkStyle,
          ),
        ],
      ),
    );
  }
}

class TermsAndConditionsWelcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = TextStyle(color: Colors.black, fontSize: 14);
    TextStyle linkStyle = TextStyle(color: Colors.blue);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(
              text: 'Al inscribirme declaro que soy mayor de edad y acepto'
                  ' las '),
          TextSpan(
            text: 'Políticas de Privacidad ',
            style: linkStyle,
          ),
          TextSpan(text: 'y los '),
          TextSpan(
            text: 'Términos y Condiciones de Mercado Libre y Mercado Pago',
            style: linkStyle,
          ),
        ],
      ),
    );
  }
}

class HomeFloatingButton extends StatelessWidget {
  final IconData icon;
  final String text;

  HomeFloatingButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 73,
        height: 120,
        padding: EdgeInsets.all(9),
        alignment: Alignment.center,
        child: Column(children: [
          FloatingActionButton(
            heroTag: this.text,
            onPressed: () => {},
            backgroundColor: Colors.white,
            child: Icon(
              this.icon,
              color: Colors.grey,
            ),
          ),
          Container(height: 10),
          Text(
            this.text,
            textAlign: TextAlign.center,
          )
        ]));
  }
}

class HomeSingleComponent extends StatelessWidget {
  final String textoArriba;
  final String textoAbajo;
  final double height;
  final StatelessWidget body;

  HomeSingleComponent(
      {required this.textoArriba,
      required this.textoAbajo,
      required this.height,
      required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: 600,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(children: [
        Expanded(
            flex: 1,
            child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(this.textoArriba,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))))),
        Expanded(flex: 8, child: this.body),
        Expanded(
            flex: 1,
            child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text(this.textoAbajo, style: TextStyle(fontSize: 18)),
                  onPressed: () {},
                )))
      ]),
    );
  }
}

class HomeBigArticle extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  HomeBigArticle(
      {required this.title, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/articulo/');
        },
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Image(image: AssetImage(image), width: 300),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(this.title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ))),
              Row(children: [
                Text(this.price, style: TextStyle(fontSize: 20)),
                Text('  38% OFF',
                    style: TextStyle(fontSize: 16, color: Colors.green)),
              ]),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('12 x \$ 110.26',
                    style: TextStyle(color: Colors.green, fontSize: 16)),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Envío gratis',
                      style: TextStyle(color: Colors.green, fontSize: 16)))
            ])));
  }
}

class ListOfArticles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        child: Column(children: [
          Expanded(
              flex: 2,
              child: HomeSmallArticle(
                  title: 'Laptop Huawei Matebook 13',
                  image: 'images/laptop1.png',
                  price: '\$16,999')),
          Expanded(
              flex: 2,
              child: HomeSmallArticle(
                  title: 'Airpods Apple con estuche',
                  image: 'images/airpods.png',
                  price: '\$3,599')),
          Expanded(
              flex: 2,
              child: HomeSmallArticle(
                  title: 'Memoria RAM 8gb DDR',
                  image: 'images/ram.png',
                  price: '\$499')),
          Expanded(
              flex: 2,
              child: HomeSmallArticle(
                  title: 'Taladro Atornillador 2x21v',
                  image: 'images/taladro.png',
                  price: '\$1,299')),
        ]));
  }
}

class HomeSmallArticle extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  HomeSmallArticle(
      {required this.title, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/articulo/');
        },
        child: Container(
          child: Row(children: [
            Expanded(
                flex: 3,
                child: Image(
                  image: AssetImage(this.image),
                  fit: BoxFit.cover,
                )),
            Expanded(
                flex: 7,
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(this.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(this.price, style: TextStyle(fontSize: 15))),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('12 x \$ 110.26',
                        style: TextStyle(color: Colors.green, fontSize: 13)),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Envío gratis',
                          style: TextStyle(color: Colors.green, fontSize: 13)))
                ]))
          ]),
        ));
  }
}

class ListOfCarrito extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              CarritoArticle(
                  title: 'Laptop Huawei Matebook 13',
                  image: 'images/laptop1.png',
                  price: '\$16,999'),
              Container(height: 15),
              CarritoArticle(
                  title: 'Airpods con estuche',
                  image: 'images/airpods.png',
                  price: '\$3,599'),
              Container(height: 15),
              CarritoArticle(
                  title: 'Taladro Recargable 2x21v',
                  image: 'images/taladro.png',
                  price: '\$1,299'),
              Container(height: 15),
            ])));
  }
}

class CarritoArticle extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  CarritoArticle(
      {required this.title, required this.image, required this.price});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/articulo/');
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(children: [
            Expanded(
                flex: 3,
                child: Image(
                  image: AssetImage(this.image),
                  fit: BoxFit.cover,
                )),
            Expanded(
                flex: 7,
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(this.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(this.price, style: TextStyle(fontSize: 15))),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('12 x \$ 110.26',
                        style: TextStyle(color: Colors.green, fontSize: 13)),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Envío gratis',
                          style: TextStyle(color: Colors.green, fontSize: 13))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                          child: Text('Eliminar',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16)),
                          onPressed: () {}))
                ]))
          ]),
        ));
  }
}

class LineOfDomicilio extends StatelessWidget {
  final String text;

  LineOfDomicilio({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Align(
          alignment: Alignment.bottomLeft,
          child:
              Text(this.text, style: TextStyle(fontWeight: FontWeight.bold))),
      Container(height: 27, child: TextField()),
      Container(height: 13)
    ]));
  }
}

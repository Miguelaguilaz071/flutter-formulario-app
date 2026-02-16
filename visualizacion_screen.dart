import 'package:flutter/material.dart';

class VisualizacionScreen extends StatelessWidget {
  // Parámetros recibidos desde el formulario
  final String nombre;
  final String correo;
  final String edad;
  final String telefono;
  final String ciudad;

  const VisualizacionScreen({
    Key? key,
    required this.nombre,
    required this.correo,
    required this.edad,
    required this.telefono,
    required this.ciudad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos Registrados'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade50,
              Colors.white,
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              // Ícono decorativo
              Icon(
                Icons.check_circle_outline,
                size: 80,
                color: Colors.green.shade600,
              ),
              const SizedBox(height: 10),
              Text(
                '¡Registro Exitoso!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple.shade700,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Aquí están tus datos:',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 30),

              // Tarjeta con los datos
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // Nombre
                      _buildDataRow(
                        icon: Icons.person,
                        label: 'Nombre',
                        value: nombre,
                        color: Colors.blue,
                      ),
                      const Divider(height: 30),

                      // Correo
                      _buildDataRow(
                        icon: Icons.email,
                        label: 'Correo electrónico',
                        value: correo,
                        color: Colors.orange,
                      ),
                      const Divider(height: 30),

                      // Edad
                      _buildDataRow(
                        icon: Icons.cake,
                        label: 'Edad',
                        value: '$edad años',
                        color: Colors.pink,
                      ),
                      const Divider(height: 30),

                      // Teléfono
                      _buildDataRow(
                        icon: Icons.phone,
                        label: 'Teléfono',
                        value: telefono,
                        color: Colors.green,
                      ),
                      const Divider(height: 30),

                      // Ciudad
                      _buildDataRow(
                        icon: Icons.location_city,
                        label: 'Ciudad',
                        value: ciudad,
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Botón Regresar
              ElevatedButton.icon(
                onPressed: () {
                  // Usar Navigator.pop() para regresar a la pantalla anterior
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text(
                  'Regresar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // Widget helper para mostrar cada fila de datos
  Widget _buildDataRow({
    required IconData icon,
    required String label,
    required String value,
    required Color color,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Ícono
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            color: color,
            size: 28,
          ),
        ),
        const SizedBox(width: 16),
        // Textos
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

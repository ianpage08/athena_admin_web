import 'package:athena_admin_web/features/nome_a_definir/dados_aluno.dart';
import 'package:athena_admin_web/features/nome_a_definir/dados_matricula.dart';
import 'package:athena_admin_web/features/nome_a_definir/dados_reponsaveis.dart';
import 'package:flutter/material.dart';

class CadastrarMatriculaPage extends StatefulWidget {
  const CadastrarMatriculaPage({super.key});

  @override
  State<CadastrarMatriculaPage> createState() => _CadastrarMatriculaPageState();
}

class _CadastrarMatriculaPageState extends State<CadastrarMatriculaPage> {
  final List<Widget> steps = const [
    DadosAluno(),
    DadosMatricula(),
    DadosReponsaveis(),
  ];

  final List<String> stepTitles = const [
    'Dados do Aluno',
    'Dados da Matrícula',
    'Responsáveis',
  ];

  int currentStep = 0;

  void nextStep() {
    if (currentStep < steps.length - 1) {
      setState(() => currentStep++);
    }
  }

  void previousStep() {
    if (currentStep > 0) {
      setState(() => currentStep--);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      appBar: AppBar(
        title: const Text('Cadastrar Matrícula'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          width: 900,
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 16,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              Expanded(child: steps[currentStep]),
              const SizedBox(height: 24),
              _buildActions(),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 HEADER DE ETAPAS
  Widget _buildHeader() {
    return Row(
      children: List.generate(stepTitles.length, (index) {
        final active = index == currentStep;
        final completed = index < currentStep;

        return Expanded(
          child: Column(
            children: [
              Container(
                height: 4,
                decoration: BoxDecoration(
                  color: completed || active
                      ? const Color(0xFF6366F1)
                      : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                stepTitles[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: active ? FontWeight.w600 : FontWeight.normal,
                  color: active ? Colors.black : Colors.black54,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget _buildActions() {
    final isLastStep = currentStep == steps.length - 1;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (currentStep > 0)
          TextButton(onPressed: previousStep, child: const Text('Voltar')),
        const SizedBox(width: 12),

        ElevatedButton(
          onPressed: () {
            if (isLastStep) {
              
              debugPrint('Finalizar matrícula');
            } else {
              nextStep();
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6366F1),
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            isLastStep ? 'Finalizar matrícula' : 'Próximo',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

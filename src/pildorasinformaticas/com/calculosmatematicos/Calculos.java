package pildorasinformaticas.com.calculosmatematicos;

public class Calculos {

	private static int resultado;

	public static int metodoSuma(int num1, int num2) {
		resultado = num1 + num2;
		return resultado;
	}

	public static int metodoResta(int num1, int num2) {
		resultado = num1 - num2;
		return resultado;
	}

	public static int metodoMultiplica(int num1, int num2) {
		resultado = num1 * num2;
		return resultado;
	}

	/*************************/

 	public int metodoSuma2(int num1, int num2) {
		return num1 + num2;
	}	
	
// 	private int resultado;

// 	public int metodoSuma(int num1, int num2) {
// 		resultado = num1 + num2;
// 		return resultado;
// 	}

// 	public int metodoResta(int num1, int num2) {
// 		resultado = num1 - num2;
// 		return resultado;
// 	}

// 	public int metodoMultiplica(int num1, int num2) {
// 		resultado = num1 * num2;
// 		return resultado;
// 	}
}

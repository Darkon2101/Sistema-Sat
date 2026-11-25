<?php
header('Content-Type: application/json');
$conexion = new mysqli("localhost", "root", "", "sat_gamificado");

if ($conexion->connect_error) {
    die(json_encode(["error" => "Conexión fallida: " . $conexion->connect_error]));
}

$tema = $_GET['tema'] ?? '';
$stmt = $conexion->prepare("SELECT * FROM preguntas WHERE tema = ? ORDER BY nivel ASC");
$stmt->bind_param("s", $tema);
$stmt->execute();
$resultado = $stmt->get_result();

$preguntas = [];
while ($fila = $resultado->fetch_assoc()) {
    $preguntas[] = $fila;
}

echo json_encode($preguntas);
$conexion->close();
?>
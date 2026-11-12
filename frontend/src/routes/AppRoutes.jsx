import { Navigate, Route, Routes } from "react-router-dom";
import Layout from "../components/Layout.jsx";
import Login from "../pages/Login.jsx";
import Inicio from "../pages/Inicio.jsx";
import Rotinas from "../pages/Rotinas.jsx";
import Treino from "../pages/Treino.jsx";
import Historico from "../pages/Historico.jsx";

export default function AppRoutes() {
  return (
    <Routes>
      <Route path="/login" element={<Login />} />
      <Route element={<Layout />}>
        <Route path="/" element={<Inicio />} />
        <Route path="/rotinas" element={<Rotinas />} />
        <Route path="/treino" element={<Treino />} />
        <Route path="/historico" element={<Historico />} />
      </Route>
      <Route path="*" element={<Navigate to="/" replace />} />
    </Routes>
  );
}

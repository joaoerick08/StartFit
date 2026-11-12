import { NavLink, Outlet } from "react-router-dom";

const itens = [
  { to: "/", rotulo: "Início" },
  { to: "/rotinas", rotulo: "Rotinas" },
  { to: "/historico", rotulo: "Histórico" },
];

export default function Layout() {
  return (
    <div className="mx-auto flex min-h-screen max-w-md flex-col bg-slate-50">
      <main className="flex-1 p-4">
        <Outlet />
      </main>
      <nav className="sticky bottom-0 flex border-t border-slate-200 bg-white">
        {itens.map((item) => (
          <NavLink
            key={item.to}
            to={item.to}
            end={item.to === "/"}
            className={({ isActive }) =>
              "flex-1 py-4 text-center text-sm " +
              (isActive ? "font-bold text-brand" : "text-slate-500")
            }
          >
            {item.rotulo}
          </NavLink>
        ))}
      </nav>
    </div>
  );
}

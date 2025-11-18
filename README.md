# 🧮 Counter — Foundry Practice Project (v1.1)

Proyecto de práctica: un **Counter** simple para aprender el flujo completo con Foundry y pruebas en Solidity.
Esta versión incluye `increment()`, `decrement()` (con protección para no bajar de cero), `reset()` y el getter público `count()`.

---

## 🎯 Objetivos didácticos

- Escribir un contrato sencillo en Solidity.
- Ejecutar y entender `forge build`, `forge test`, `forge fmt`.
- Desplegar en una red local con `anvil` y hacer llamadas con `cast`.
- Escribir tests que cubran casos felices y casos de error (revert).
- Documentar y versionar el proyecto (git tags).

---

## 📁 Estructura del proyecto

src/
└─ Counter.sol # Contrato con increment, decrement y reset

test/
└─ Counter.t.sol # Tests unitarios en Solidity (forge-std)

script/
└─ Counter.s.sol # Script opcional para deploy reproducible

foundry.toml # Config Foundry
README.md # Este archivo

yaml
Copiar código

---

## 🧾 Contrato: descripción rápida

- `uint256 public count` — getter automático `count()`.
- `increment()` — suma 1 a `count` y emite `Increment`.
- `decrement()` — resta 1 a `count` si `count > 0`, emite `Decrement`. Revert con `"Cannot decrement below zero"` si se intenta bajar de 0.
- `reset()` — pone `count` en 0.

---

## 🚀 Comandos principales

1. Formatear:
```bash
forge fmt
Compilar:

bash
Copiar código
forge build -v
Ejecutar tests (mostrando todo):

bash
Copiar código
forge test -vvv
Levantar red local (en otra terminal):

bash
Copiar código
anvil
Deploy desde otra terminal (usando PRIVATE_KEY de anvil):

bash
Copiar código
export PRIVATE_KEY=<tu_private_key>
forge create src/Counter.sol:Counter \
  --rpc-url http://127.0.0.1:8545 \
  --private-key $PRIVATE_KEY \
  --broadcast
O usando el script:

bash
Copiar código
forge script script/Counter.s.sol:CounterScript --rpc-url http://127.0.0.1:8545 --private-key $PRIVATE_KEY --broadcast
Leer el valor count (reemplazá 0xDIRECCION):

bash
Copiar código
cast call 0xDIRECCION "count() returns (uint256)"
Llamar increment() / decrement():

bash
Copiar código
cast send 0xDIRECCION "increment()" --rpc-url http://127.0.0.1:8545 --private-key $PRIVATE_KEY
cast send 0xDIRECCION "decrement()" --rpc-url http://127.0.0.1:8545 --private-key $PRIVATE_KEY
🧪 Tests que incluimos (qué enseñan)
testInitialIsZero — el estado inicial es 0 (getter público).

testIncrement — increment() incrementa correctamente.

testDecrement — verifica que decrement() funcione después de un increment().

testDecrementRevertsIfZero — demuestra cómo testear un revert con mensaje esperado.

✅ Buenas prácticas mencionadas en clase
No subir claves privadas al repo: usar .env y .gitignore.

Versionar releases con tags: git tag -a v1.1 -m "Counter v1.1: add decrement()".

Usar forge fmt antes de commits.

Mantener tests exhaustivos y simples.

Documentar el flujo de deploy local y las rutas de los scripts.

🧩 Ejercicio propuesto para los alumnos
Añadir una función incrementBy(uint256 n) con test.

Añadir un owner que pueda hacer reset() (practicar control de acceso).

Medir gas: añadir forge snapshot y ver variaciones de gas por función.

🏁 Estado
✅ Proyecto listo como práctica y material de clase.
Siguiente: construir un mini-dapp que conecte este contrato con un front (React + Vite) y luego integrar un pequeño análisis con IA si desean un "toque de distinción".

👩‍💻 Autor
Presentado por Daniela — práctica de Foundry paso a paso.

yaml
Copiar código

---

## 6) Checklist para la clase / entrega
- [ ] `forge fmt` ✅  
- [ ] `forge build` ✅  
- [ ] `forge test` ✅  
- [ ] `anvil` y deploy local con `--broadcast` ✅  
- [ ] `cast call` y `cast send` para demostrar lectura y escritura ✅  
- [ ] README actualizado y listo para compartir ✅  
- [ ] Commit y tag (v1.1) y push al remoto ✅

---

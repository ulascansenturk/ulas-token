import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";


const UlasTokenModule = buildModule("UlasTokenModule", (m) => {

  const ulasToken = m.contract("Ulas");

  return { ulasToken };
});

export default UlasTokenModule;

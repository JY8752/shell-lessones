#!/usr/bin/env bun

import { $, argv } from "zx";
import inquirer from "inquirer";

const help = () => {
  console.log(`
Usage: example.ts [Options] 

Options:
  --help, -h Show help
  --no int command type number
  `);
  process.exit(0);
};

const ifFunc = (): number => {
  const arg = argv._[0];

  if (arg === undefined) {
    console.error("Please enter int value.");
    return 1;
  }

  if (typeof arg !== "number") {
    console.error("not int value, please enter int value. i: ", arg);
    return 1;
  }

  const i = Number(arg);

  if (i === 3) {
    console.log("iの値は3です");
  } else if (i === 5) {
    console.log("iの値は5です");
  } else {
    console.log("iの値は3でも5でもありません");
  }

  return 0;
};

const selectFunc = async (): Promise<number> => {
  const { direction } = await inquirer.prompt<{ direction: string }>([
    {
      type: "list",
      name: "direction",
      message: "Which direction would you like to move?",
      choices: ["Up", "Down", "Left", "Right", "Quit"],
    },
  ]);

  let exitCode = 0;
  switch (direction) {
    case "Up":
      console.log("Moved Up");
      break;
    case "Down":
      console.log("Moved Down");
      break;
    case "Left":
      console.log("Moved Left");
      break;
    case "Right":
      console.log("Moved Right");
      break;
    case "Quit":
      console.log("Exiting");
      break;
    default:
      console.error("Invalid choice");
      exitCode = 1;
  }
  return exitCode;
};

// run
{
  console.log(argv);

  (argv["h"] || argv["help"]) && help();

  let exitCode: number;
  switch (argv["no"]) {
    case 1:
      exitCode = ifFunc();
      break;
    case 2:
      exitCode = await selectFunc();
      break;
    default:
      console.error(`unkown no value. no: ${argv["no"]}`);
      exitCode = 1;
  }

  process.exit(exitCode);
}

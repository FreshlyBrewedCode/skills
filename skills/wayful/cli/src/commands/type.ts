import { fail } from "../core";
import { allTypes, project, render, typeDef } from "../model";

export async function handleType(
  command: string,
  flags: Record<string, any>,
  position: string[],
) {
  const p = await project(flags);
  if (command === "list") {
    const ts = await allTypes(p.root);
    render(ts, flags, ts.map((t) => t.name).join("\n"));
    return;
  }
  if (command === "show") {
    const t = await typeDef(
      p.root,
      position[2] ?? fail("type name is required."),
    );
    render(t, flags, `${t.name}\n${t.instructions}`);
    return;
  }
  fail(`unknown type command '${command}'.`);
}

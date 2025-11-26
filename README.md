# Smartr Claude Code Plugin Challenge

Welcome to the Smartr coding challenge! This starter template provides the basic structure for your Claude Code plugin.

## 🎯 Your Mission

Build a Claude Code plugin that improves developer productivity and code quality at Smartr. Choose at least 3 components to implement:

- **MCP Servers** - Integrate with external systems, create your own or select from a number of available servers.
- **Commands** - Create slash commands for common tasks
- **Skills** - Build reusable AI workflows
- **Subagents** - Create autonomous task executors
- **Hooks** - Automate development workflows

## 📁 Starter Structure

```
claude-plugin-challenge-starter/
├── plugin.json              # Plugin manifest (configure here)
├── package.json             # NPM package configuration
├── README.md                # This file - replace with your documentation
├── examples/                # Example implementations (for reference)
│   ├── mcp-server-example/
│   ├── command-example/
│   ├── skill-example/
│   ├── subagent-example/
│   └── hook-example/
└── .gitignore
```

## 🚀 Getting Started

### 1. Choose Your Problem

Think about your development workflow:
- What tasks are repetitive or tedious?
- What information do you frequently need?
- What processes could be automated?
- What would make your day easier?

### 2. Plan Your Components

Decide which 3+ components you'll implement:
- What will each component do?
- How will they work together?
- What value do they provide?

### 3. Update plugin.json

Configure your plugin in `plugin.json`:
```json
{
  "name": "your-plugin-name",
  "description": "What your plugin does",
  "author": "Your Name",
  ...
}
```

### 4. Implement Your Components

See the `examples/` directory for reference implementations of each component type.

### 5. Test Your Plugin

Install and test locally:
```bash
# Install dependencies
npm install

# Test your plugin (adjust based on your testing approach)
# You may need to link or install it in Claude Code
```

## 📚 Component Examples

The `examples/` directory contains reference implementations:

- **mcp-server-example/** - Shows how to create an MCP server
- **command-example/** - Shows how to create a slash command
- **skill-example/** - Shows how to create a skill
- **subagent-example/** - Shows how to create a subagent
- **hook-example/** - Shows how to implement hooks

**Note:** These are minimal examples to show structure. Your implementations should be more sophisticated!

## 🎓 Resources

- [Claude Code Plugin Documentation](https://docs.claudecode.com/plugins)
- [MCP Server Guide](https://modelcontextprotocol.io/)
- [Example Plugins](https://github.com/anthropics/claude-code/tree/main/plugins)

## ✅ What to Submit

Replace this README with your own documentation that includes:

1. **Problem Statement**
   - What problem does your plugin solve?
   - Who is it for?
   - Why does it matter?

2. **Architecture**
   - What components did you implement?
   - How do they work together?
   - What design decisions did you make?

3. **Installation & Usage**
   - How to install your plugin
   - How to use each feature
   - Configuration options

4. **Demo**
   - Screenshots or video walkthrough
   - Example usage scenarios

5. **Reflection**
   - What would you improve with more time?
   - What trade-offs did you make?
   - What did you learn?

## 💡 Tips

- Start with one component and get it working
- Test frequently as you build
- Think about the developer experience
- Document your decisions
- Keep it practical, not theoretical
- The plugins purpose is to accelerate developer productivity.

## 🤖 AI Assistance

Feel free to use Claude Code, GitHub Copilot, ChatGPT, or any AI tools. If you do, keep a log of your prompts in `AI_PROMPTS.md`.

---

Good luck! We're excited to see what you build.

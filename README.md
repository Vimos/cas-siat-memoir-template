# CAS SIAT Technical Report LaTeX Template

中国科学院深圳先进技术研究院（SIAT）技术报告 LaTeX 模板。

A LaTeX template for Technical Reports at Shenzhen Institutes of Advanced Technology (SIAT), Chinese Academy of Sciences (CAS).

---

## 特性 / Features

- **机构标识**：封面页包含 SIAT / CAS 官方中英文名称与标准配色
- **中英文混排**：基于 `ctex` 宏包，完美支持中英文混排与双语摘要
- **学术版式**：规范的章节结构、图表标题、算法环境与参考文献样式
- **AI 研究示例**：附带一份关于「大语言模型多模态推理」的示例技术报告
- **Overleaf 兼容**：可直接打包为 ZIP 导入 Overleaf 进行在线编辑

## 快速开始 / Quick Start

### 方式一：Overleaf 在线编辑（推荐）

1. 点击本仓库右上角的 **Code → Download ZIP**，下载模板压缩包。
2. 登录 [Overleaf](https://www.overleaf.com)，点击 **New Project → Upload Project**。
3. 上传刚下载的 ZIP 文件，Overleaf 会自动解压并识别 `main.tex`。
4. 在 Overleaf 菜单中将 **Compiler** 切换为 **XeLaTeX**（因模板使用 `ctex`）。
5. 点击 Recompile，即可看到生成的 PDF。

### 方式二：本地编译

```bash
git clone https://github.com/Vimos/cas-siat-memoir-template.git
cd cas-siat-memoir-template
xelatex main.tex
bibtex main
xelatex main.tex
xelatex main.tex
```

> 注：本地编译需确保已安装完整版 TeX Live（推荐 2023 或更新版本）。

## 文件结构 / Project Structure

```
cas-siat-memoir-template/
├── cas-siat-tr.cls          % 模板类文件（样式定义）
├── main.tex                 % 主文档（报告入口）
├── references.bib           % BibTeX 参考文献库
├── README.md                % 本说明文件
├── figs/                    % 图片文件夹
├── sections/
│   ├── abstract.tex         % 中英文摘要
│   ├── introduction.tex     % 引言
│   ├── related_work.tex     % 相关工作
│   ├── method.tex           % 方法论
│   ├── experiments.tex      % 实验
│   └── conclusion.tex       % 总结与展望
```

## 自定义指南 / Customization

### 修改报告元信息

在 `main.tex` 中编辑以下命令：

```latex
\trnumber{TR-2026-AI-001}          % 报告编号
\trdate{\today}                    % 发布日期
\title{报告标题}                    % 中英文标题
\author{作者姓名 \quad 单位}        % 作者与单位
```

### 替换/移除示例内容

删除或替换 `sections/` 目录下的文件内容即可。若需要新增章节，在 `main.tex` 中使用：

```latex
\input{sections/your_new_section}
```

### 添加图片

将图片放入 `figs/` 文件夹，然后在正文中引用：

```latex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{figs/your_image.png}
  \caption{图片标题。}
  \label{fig:your_label}
\end{figure}
```

## 编译注意事项 / Compilation Notes

- 必须选择 **XeLaTeX** 作为编译器，以支持 `ctex` 中文宏包。
- 如果参考文献未正确显示，请确保执行了 `bibtex main` 步骤（或 Overleaf 自动处理）。
- 模板内置了 `algorithm2e` 环境，适合展示伪代码。

## 开源协议 / License

本项目采用 MIT 协议开源，详见 [LICENSE](./LICENSE) 文件。

## 联系与反馈 / Contact

如有任何问题或改进建议，欢迎在 GitHub Issues 中提出。

---

*Template designed for SIAT AI Research Progress Reports.*

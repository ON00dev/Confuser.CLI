# Confuser.CLI

Confuser.CLI.exe for C# obfuscating

## How to Install

- clone this repository: `git clone https://github.com/ON00dev/Confuser.CLI.git`
- go to directory /Confuser.CLI: `cd Confuser.CLI`
- run "setup.bat" with administrator privilegies;
- This will set the executable to Path.

## How to Use

- type this command on terminal: `Confuser.CLI.exe {your_project.csproj}`

This __.csproj__ is a configurating file to obfuscating.

 ### `.csproj` Configurating Example

```xml
<?xml version="1.0" encoding="utf-8" ?>
<Project>
  <BaseDirectory>{base_directory}</BaseDirectory>
  <OutputDirectory>{output_directory}</OutputDirectory>
  <Modules>
    <Module file="{module_file}" />
  </Modules>
  <Protections>
    <preset>{protections_preset}</preset>
  </Protections>
</Project>
```
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Key Elements:

* BaseDirectory: This is the base directory where your input files (assemblies) are located. The obfuscation tool will use this directory to locate the files to obfuscate.

* OutputDirectory: This directory is where the obfuscated assemblies will be saved. It should be set to a location where you want the final output to be stored.

* Modules: A list of assemblies (DLLs or EXEs) to be obfuscated. Each <Module> entry should point to the file path of the assembly you want to obfuscate. Make sure to replace path_to_your_assembly.dll with the actual path to your compiled C# assembly.

- Protections: This section defines the level of protection applied to your assemblies. The preset attribute can be set to one of the following:

   | PRESET |
   |------------------------------|
   | **none**: No protection applied. |
   | **minimum**: Basic protection.   |
   | **normal**: Standard protection. |
   | **aggressive**: Higher protection with more transformations. |
   | **maximum**: Maximum protection with extensive transformations. |

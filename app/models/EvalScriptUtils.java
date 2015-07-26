package models;

import bsh.EvalError;
import bsh.Interpreter;
import org.abstractmeta.toolbox.compilation.compiler.JavaSourceCompiler;
import org.abstractmeta.toolbox.compilation.compiler.impl.JavaSourceCompilerImpl;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/**
 * Created by User on 12.07.2015.
 */
public class EvalScriptUtils {
    private String stackTrace = "empty";

    public String getStackTrace() {
        return stackTrace;
    }

    public void setStackTrace(String stackTrace) {
        this.stackTrace = stackTrace;
    }

    public void evalScript(String scriptExpression){
        if (scriptExpression == null){
            return;
        }
        System.out.println(scriptExpression);
        Interpreter interpreter = new Interpreter();
        try {
            interpreter.eval(scriptExpression);
            System.out.println("!!!!" + interpreter.get("RESULT"));
        } catch (EvalError error) {
            error.printStackTrace();
            throw new IllegalStateException(String.format("Can't evaluate script [%s]", scriptExpression), error);
        }
    }

    public ClassLoader compileScript(String packageName, String className, String sourceCode){
        if (sourceCode == null){
            return null;
        }
        JavaSourceCompiler javaSourceCompiler = new JavaSourceCompilerImpl();
        ClassLoader classLoader = null;
        try{
            JavaSourceCompiler.CompilationUnit compilationUnit = javaSourceCompiler.createCompilationUnit();
            compilationUnit.addJavaSource(String.format("%s.%s", packageName, className), sourceCode);
            classLoader = javaSourceCompiler.compile(compilationUnit);
            return classLoader;
        }catch (Exception e){
            setStackTrace(e.toString());
        }
        return classLoader;
    }
    public void evalMainMethod(String packageName, String className, String sourceCode){
        ClassLoader classLoader = compileScript(packageName, className, sourceCode);
        try {
            Class fooClass = classLoader.loadClass("com.test.foo.Lesson");
            try {
                Method meth = fooClass.getMethod("main", String[].class);
                String[] params = null; // init params accordingly
                try {
                    meth.invoke(null, (Object) params); // static method doesn't have an instance
                } catch (InvocationTargetException e) {
                    e.printStackTrace();
                }

            } catch (NoSuchMethodException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }
}

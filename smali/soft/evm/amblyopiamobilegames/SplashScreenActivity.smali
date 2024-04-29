.class public Lsoft/evm/amblyopiamobilegames/SplashScreenActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SplashScreenActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 13
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 15
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/SplashScreenActivity;->finish()V

    return-void
.end method

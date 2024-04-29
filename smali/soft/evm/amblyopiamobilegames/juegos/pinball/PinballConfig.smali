.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/PinballConfig;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PinballConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0028

    .line 13
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/PinballConfig;->setContentView(I)V

    return-void
.end method

.class Lsoft/evm/amblyopiamobilegames/juegos/Pausa$1;
.super Ljava/lang/Object;
.source "Pausa.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->pausa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 36
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->seguro()V

    return-void
.end method

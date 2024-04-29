.class Lsoft/evm/amblyopiamobilegames/juegos/Pausa$2;
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 27
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    return-void
.end method

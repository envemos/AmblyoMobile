.class Lsoft/evm/amblyopiamobilegames/juegos/Pausa$4;
.super Ljava/lang/Object;
.source "Pausa.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/juegos/Pausa;->seguro()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "NO"

    .line 54
    sput-object p1, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->correo:Ljava/lang/String;

    const/4 p1, 0x1

    .line 55
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    return-void
.end method

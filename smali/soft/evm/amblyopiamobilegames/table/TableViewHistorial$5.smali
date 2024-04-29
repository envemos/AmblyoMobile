.class Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$5;
.super Ljava/lang/Object;
.source "TableViewHistorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$5;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 417
    check-cast p1, Landroid/widget/TableRow;

    return-void
.end method

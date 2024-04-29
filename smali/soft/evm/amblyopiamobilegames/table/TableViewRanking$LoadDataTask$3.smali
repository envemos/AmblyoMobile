.class Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$3;
.super Ljava/lang/Object;
.source "TableViewRanking.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;)V
    .locals 0

    .line 586
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$3;->this$1:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 589
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask$3;->this$1:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;

    iget-object p1, p1, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking$LoadDataTask;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;->finish()V

    return-void
.end method

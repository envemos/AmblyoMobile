.class Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;
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

.field final synthetic val$user:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->val$user:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 252
    new-instance p1, Lsoft/evm/amblyopiamobilegames/table/Partidas;

    invoke-direct {p1}, Lsoft/evm/amblyopiamobilegames/table/Partidas;-><init>()V

    .line 253
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    sget-object v1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    invoke-static {v0, v1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->access$002(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM HISTORIAL WHERE DIA BETWEEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Lsoft/evm/amblyopiamobilegames/ActividadActivity;->m:J

    const-wide/32 v3, 0x5265c00

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND CORREO = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->val$user:Landroid/content/SharedPreferences;

    const-string v2, "correo"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->access$100(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " ORDER BY S1 DESC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, " ORDER BY S1"

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->access$100(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, " ORDER BY S2 DESC"

    if-eqz v0, :cond_1

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-static {v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->access$100(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY S2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    .line 263
    :goto_0
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/table/Partidas;->getPartidasHistorial()[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    move-result-object p1

    iput-object p1, v0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->data:[Lsoft/evm/amblyopiamobilegames/table/PartidaData;

    .line 264
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->loadData()V

    .line 265
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    sget-object v0, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    invoke-static {p1, v0}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->access$102(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial$3;->this$0:Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;->access$000(Lsoft/evm/amblyopiamobilegames/table/TableViewHistorial;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->sql_historial:Ljava/lang/String;

    return-void
.end method

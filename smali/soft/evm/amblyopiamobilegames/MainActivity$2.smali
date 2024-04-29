.class Lsoft/evm/amblyopiamobilegames/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsoft/evm/amblyopiamobilegames/MainActivity;->mostrarAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

.field final synthetic val$tipo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lsoft/evm/amblyopiamobilegames/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    iput-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->val$tipo:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 416
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 418
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->val$tipo:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "informacion"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string p2, "configuracion"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string p2, "actividad"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string p2, "sesion"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_0

    :sswitch_4
    const-string p2, "alarma"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string p2, "recordatorio"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 431
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 435
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 439
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lsoft/evm/amblyopiamobilegames/ActividadActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 423
    :pswitch_3
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$100(Lsoft/evm/amblyopiamobilegames/MainActivity;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 424
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v1, Lsoft/evm/amblyopiamobilegames/SesionActivity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2, p1, v0}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 428
    :cond_6
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-static {p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->access$200(Lsoft/evm/amblyopiamobilegames/MainActivity;)V

    goto :goto_1

    .line 443
    :pswitch_4
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lsoft/evm/amblyopiamobilegames/DailyTimeActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 447
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 448
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/MainActivity$2;->this$0:Lsoft/evm/amblyopiamobilegames/MainActivity;

    invoke-virtual {p2, p1}, Lsoft/evm/amblyopiamobilegames/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a44eb73 -> :sswitch_5
        -0x545a2fd0 -> :sswitch_4
        -0x35fd8bf9 -> :sswitch_3
        0xc32303d -> :sswitch_2
        0x732bbaa7 -> :sswitch_1
        0x754ebadd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

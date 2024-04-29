.class public Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "AlarmReceiver"

    .line 17
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 26
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;->TAG:Ljava/lang/String;

    const-string v0, "onReceive: BOOT_COMPLETED"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance p2, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-direct {p2, p1}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;-><init>(Landroid/content/Context;)V

    .line 28
    const-class v0, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_hour()I

    move-result v1

    invoke-virtual {p2}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_min()I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->setReminder(Landroid/content/Context;Ljava/lang/Class;II)V

    return-void

    .line 33
    :cond_0
    iget-object p2, p0, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;->TAG:Ljava/lang/String;

    const-string v0, "onReceive: "

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 37
    const-class p2, Lsoft/evm/amblyopiamobilegames/MainActivity;

    const v0, 0x7f1100c0

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f110146

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {p1, p2, v0, v1}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->showNotification(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.class public Lsoft/evm/amblyopiamobilegames/RemindMeActivity;
.super Landroid/app/Activity;
.source "RemindMeActivity.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field TAG:Ljava/lang/String;

.field hour:I

.field ll_set_time:Landroid/widget/LinearLayout;

.field localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

.field min:I

.field myClipboard:Landroid/content/ClipboardManager;

.field parent:Landroid/view/ViewGroup;

.field reminderSwitch:Landroidx/appcompat/widget/SwitchCompat;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "RemindMe"

    .line 29
    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private setFont()V
    .locals 6

    const v0, 0x7f0a028b

    .line 102
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a028c

    .line 103
    invoke-virtual {p0, v1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a028e

    .line 104
    invoke-virtual {p0, v2}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a028d

    .line 105
    invoke-virtual {p0, v3}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a0284

    .line 106
    invoke-virtual {p0, v4}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    new-instance v5, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-direct {v5, p0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v5, v0}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    .line 109
    invoke-virtual {v5, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    .line 110
    invoke-virtual {v5, v2}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    .line 111
    invoke-virtual {v5, v3}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    .line 112
    invoke-virtual {v5, v4}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setActivityText(Landroid/widget/TextView;)V

    return-void
.end method

.method private showTimePickerDialog(II)V
    .locals 9

    .line 118
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->parent:Landroid/view/ViewGroup;

    const v2, 0x7f0d00a2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 122
    new-instance v8, Landroid/app/TimePickerDialog;

    new-instance v4, Lsoft/evm/amblyopiamobilegames/RemindMeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity$$ExternalSyntheticLambda0;-><init>(Lsoft/evm/amblyopiamobilegames/RemindMeActivity;)V

    const v3, 0x7f120008

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 135
    invoke-virtual {v8, v0}, Landroid/app/TimePickerDialog;->setCustomTitle(Landroid/view/View;)V

    .line 136
    invoke-virtual {v8}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method


# virtual methods
.method public getCurrentLocale()Ljava/util/Locale;
    .locals 2

    .line 161
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getFormatedTime(II)Ljava/lang/String;
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 148
    :try_start_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 149
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    const-string v0, "hh:mm a"

    .line 150
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public go_back(Landroid/view/View;)V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$0$soft-evm-amblyopiamobilegames-RemindMeActivity(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 78
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->setReminderStatus(Z)V

    if-eqz p2, :cond_0

    .line 80
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->TAG:Ljava/lang/String;

    const-string p2, "onCheckedChanged: true"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_hour()I

    move-result v0

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {v1}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_min()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->setReminder(Landroid/content/Context;Ljava/lang/Class;II)V

    .line 82
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->ll_set_time:Landroid/widget/LinearLayout;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    .line 84
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->TAG:Ljava/lang/String;

    const-string p2, "onCheckedChanged: false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;

    invoke-static {p1, p2}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->cancelReminder(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->ll_set_time:Landroid/widget/LinearLayout;

    const p2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method synthetic lambda$onCreate$1$soft-evm-amblyopiamobilegames-RemindMeActivity(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->getReminderStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_hour()I

    move-result p1

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_min()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->showTimePickerDialog(II)V

    :cond_0
    return-void
.end method

.method synthetic lambda$showTimePickerDialog$2$soft-evm-amblyopiamobilegames-RemindMeActivity(Landroid/widget/TimePicker;II)V
    .locals 2

    .line 124
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeSet: hour "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeSet: min "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1, p2}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->set_hour(I)V

    .line 127
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1, p3}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->set_min(I)V

    .line 128
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->tvTime:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p3}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getFormatedTime(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->getReminderStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;

    iget-object p3, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p3}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_hour()I

    move-result p3

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_min()I

    move-result v0

    invoke-static {p1, p2, p3, v0}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->setReminder(Landroid/content/Context;Ljava/lang/Class;II)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lsoft/evm/amblyopiamobilegames/remindMe/AlarmReceiver;

    invoke-static {p1, p2}, Lsoft/evm/amblyopiamobilegames/remindMe/NotificationScheduler;->cancelReminder(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 49
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->requestWindowFeature(I)Z

    .line 50
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d002c

    .line 54
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->setContentView(I)V

    const p1, 0x7f0a00b8

    .line 56
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->parent:Landroid/view/ViewGroup;

    .line 58
    new-instance p1, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    const-string p1, "clipboard"

    .line 60
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->myClipboard:Landroid/content/ClipboardManager;

    const p1, 0x7f0a014f

    .line 62
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->ll_set_time:Landroid/widget/LinearLayout;

    const p1, 0x7f0a028d

    .line 64
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->tvTime:Landroid/widget/TextView;

    const p1, 0x7f0a0270

    .line 66
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->reminderSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 68
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_hour()I

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->hour:I

    .line 69
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->get_min()I

    move-result p1

    iput p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->min:I

    .line 71
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->tvTime:Landroid/widget/TextView;

    iget v1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->hour:I

    invoke-virtual {p0, v1, p1}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->getFormatedTime(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->reminderSwitch:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->getReminderStatus()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 74
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->localData:Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;

    invoke-virtual {p1}, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->getReminderStatus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->ll_set_time:Landroid/widget/LinearLayout;

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 77
    :cond_0
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->reminderSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity$$ExternalSyntheticLambda2;-><init>(Lsoft/evm/amblyopiamobilegames/RemindMeActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->ll_set_time:Landroid/widget/LinearLayout;

    new-instance v0, Lsoft/evm/amblyopiamobilegames/RemindMeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity$$ExternalSyntheticLambda1;-><init>(Lsoft/evm/amblyopiamobilegames/RemindMeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/RemindMeActivity;->setFont()V

    return-void
.end method

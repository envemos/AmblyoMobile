.class public Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;
.super Ljava/lang/Object;
.source "LocalData.java"


# static fields
.field private static final APP_SHARED_PREFS:Ljava/lang/String; = "RemindMePref"

.field private static final hour:Ljava/lang/String; = "hour"

.field private static final min:Ljava/lang/String; = "min"

.field private static final reminderStatus:Ljava/lang/String; = "reminderStatus"


# instance fields
.field private final appSharedPrefs:Landroid/content/SharedPreferences;

.field private final prefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RemindMePref"

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->appSharedPrefs:Landroid/content/SharedPreferences;

    .line 24
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public getReminderStatus()Z
    .locals 3

    .line 31
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->appSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "reminderStatus"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public get_hour()I
    .locals 3

    .line 44
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->appSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "hour"

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public get_min()I
    .locals 3

    .line 57
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->appSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "min"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 68
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 69
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setReminderStatus(Z)V
    .locals 2

    .line 36
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "reminderStatus"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public set_hour(I)V
    .locals 2

    .line 49
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public set_min(I)V
    .locals 2

    .line 62
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "min"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    iget-object p1, p0, Lsoft/evm/amblyopiamobilegames/remindMe/LocalData;->prefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

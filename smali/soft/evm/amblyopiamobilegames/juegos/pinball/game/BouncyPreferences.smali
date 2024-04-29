.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BouncyPreferences;
.super Landroid/preference/PreferenceActivity;
.source "BouncyPreferences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 12
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    :try_start_0
    const-class p1, Landroid/view/MotionEvent;

    const-string v0, "ACTION_POINTER_INDEX_MASK"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    const p1, 0x7f140001

    goto :goto_1

    :cond_0
    const p1, 0x7f140002

    .line 22
    :goto_1
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/BouncyPreferences;->addPreferencesFromResource(I)V

    return-void
.end method

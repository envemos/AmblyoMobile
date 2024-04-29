.class public Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"


# static fields
.field public static final BREAKER_SQL:Ljava/lang/String; = "Breaker"

.field public static final FLAPPY_SQL:Ljava/lang/String; = "Flappy"

.field public static final PACMAN_SQL:Ljava/lang/String; = "Pacman"

.field public static final PINBALL_SQL:Ljava/lang/String; = "Pinball"

.field public static final PONG_SQL:Ljava/lang/String; = "Pong"

.field public static final SNAKE_SQL:Ljava/lang/String; = "Snake"

.field public static final SPACE_SQL:Ljava/lang/String; = "Space"

.field public static final TETRIS_SQL:Ljava/lang/String; = "Tetris"

.field public static dont_show_again:Z = false

.field public static volatile gameOver:Z = false

.field public static juegoSQL:Ljava/lang/String; = null

.field static nombre:Ljava/lang/String; = null

.field public static volatile pause:Z = false

.field static texto:Ljava/lang/String; = null

.field public static youtube_id:Ljava/lang/String; = "JRaTO9bA8Go"


# instance fields
.field private config:Ljava/lang/Class;

.field highScores:Landroid/content/SharedPreferences;

.field private juego:Ljava/lang/Class;

.field final min_milisegundos:I

.field tiempo_demo_diario:Landroid/content/SharedPreferences;

.field tiempo_diario:I

.field title:Landroid/widget/TextView;

.field user:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_diario:I

    const v0, 0x493e0

    .line 77
    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->min_milisegundos:I

    return-void
.end method

.method private comprobarTiempoDiario()V
    .locals 5

    .line 107
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_demo_diario:Landroid/content/SharedPreferences;

    const-string v1, "tiempo"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_diario:I

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    if-eqz v2, :cond_0

    .line 109
    :try_start_0
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->mostrarAlertDialog()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private iniConfig()V
    .locals 2

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->config:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 290
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private iniciarSharedDemo()V
    .locals 15

    const-string v0, "TiempoDemoDiario"

    const/4 v1, 0x0

    .line 151
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_demo_diario:Landroid/content/SharedPreferences;

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_demo_diario:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "fecha de hoy"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 154
    iget-object v4, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_demo_diario:Landroid/content/SharedPreferences;

    const-string v6, "tiempo"

    const-wide/16 v7, 0x0

    invoke-interface {v4, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v9, 0x1

    .line 158
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/4 v11, 0x2

    .line 159
    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x5

    .line 160
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 163
    invoke-virtual {v14, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 164
    invoke-virtual {v14, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 165
    invoke-virtual {v14, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 166
    invoke-virtual {v14, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v10, v2, :cond_0

    if-ne v12, v3, :cond_0

    if-eq v4, v9, :cond_1

    .line 169
    :cond_0
    iget-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_demo_diario:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 170
    invoke-interface {v2, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v2, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    :cond_1
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_demo_diario:Landroid/content/SharedPreferences;

    const-string v1, "tiempo_diario"

    invoke-interface {v0, v1, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x493e0

    mul-int/2addr v0, v1

    iput v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->tiempo_diario:I

    return-void
.end method

.method private interfaz()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->titulo()V

    return-void
.end method

.method private mostrarAlertDialog()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/WindowManager$BadTokenException;
        }
    .end annotation

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a009d

    .line 118
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const v3, 0x7f110152

    .line 119
    invoke-virtual {p0, v3}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f1100a5

    .line 120
    invoke-virtual {p0, v3}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 122
    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$1;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$1;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;)V

    const-string v3, "OK"

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 131
    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$2;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$2;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;)V

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 142
    sget-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->dont_show_again:Z

    if-eqz v1, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method private switchCase()V
    .locals 11

    .line 180
    sget-object v0, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "Flappy"

    const-string v3, "Breaker"

    const-string v4, "Pinball"

    const-string v5, "Pong"

    const/4 v6, 0x1

    const-string v7, "Tetris"

    const-string v8, "Snake"

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "Space Invaders"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v10, v6

    goto :goto_0

    :sswitch_7
    const-string v1, "PacMan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v10, v9

    :goto_0
    const v0, 0x7f0a0076

    const/16 v1, 0x8

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    .line 202
    :pswitch_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    .line 203
    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    .line 205
    const-class v2, Lsoft/evm/amblyopiamobilegames/juegos/flappy/game/FlappyGame;

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    .line 206
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "2LB2DryxQZE"

    .line 207
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    goto/16 :goto_1

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    .line 211
    sput-object v3, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    .line 213
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/game/BreakoutGame;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    .line 214
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/breaker/BreakerConfig;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->config:Ljava/lang/Class;

    const-string v0, "FHZ5ysyp1VE"

    .line 215
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    goto/16 :goto_1

    .line 243
    :pswitch_2
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11016b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    .line 244
    sput-object v4, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    .line 246
    const-class v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/PinballGame;

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    .line 248
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0079

    .line 249
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "R5_i2PIfGgM"

    .line 250
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    goto/16 :goto_1

    .line 218
    :pswitch_3
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    const-string v0, "Space"

    .line 219
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    .line 221
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/space/game/SpaceInvadersGame;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    .line 222
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/space/SpaceConfig;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->config:Ljava/lang/Class;

    const-string v0, "G_m04zWfMd4"

    .line 223
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    goto/16 :goto_1

    .line 182
    :pswitch_4
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    .line 183
    sput-object v8, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11018e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    .line 185
    invoke-virtual {p0, v8, v9}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/16 v1, 0x32

    const-string v2, "velocidad"

    .line 186
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    const-string v1, "auto"

    .line 187
    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    const-string v1, "muros"

    .line 188
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 189
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/game/SnakeGame;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    .line 190
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/snake/SnakeConfig;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->config:Ljava/lang/Class;

    const-string v0, "i-lCEkPtVag"

    .line 191
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    goto/16 :goto_1

    .line 226
    :pswitch_5
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    .line 227
    sput-object v5, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f11016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    .line 229
    const-class v2, Lsoft/evm/amblyopiamobilegames/juegos/pong/game/Pong;

    iput-object v2, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    .line 231
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "S8Uc3ne533Y"

    .line 232
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    goto :goto_1

    .line 194
    :pswitch_6
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    .line 195
    sput-object v7, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    .line 197
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    .line 198
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/tetris/TetrisConfig;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->config:Ljava/lang/Class;

    const-string v0, "0iP-UsBKXUc"

    .line 199
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    goto :goto_1

    .line 235
    :pswitch_7
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->nombre:Ljava/lang/String;

    const-string v0, "Pacman"

    .line 236
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juegoSQL:Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->texto:Ljava/lang/String;

    .line 238
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/game/PacManGame;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    .line 239
    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/pacman/PacManConfig;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->config:Ljava/lang/Class;

    const-string v0, "NtFYTtE1mmg"

    .line 240
    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71f73878 -> :sswitch_7
        -0x6ae331c7 -> :sswitch_6
        0x260c18 -> :sswitch_5
        0x4c51920 -> :sswitch_4
        0x2588832c -> :sswitch_3
        0x415b7cf4 -> :sswitch_2
        0x6ba0b9cc -> :sswitch_1
        0x7d92f05e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private titulo()V
    .locals 2

    const v0, 0x7f0a0249

    .line 260
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->title:Landroid/widget/TextView;

    .line 261
    sget-object v1, Lsoft/evm/amblyopiamobilegames/MainActivity;->juego:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v0, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;

    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lsoft/evm/amblyopiamobilegames/layoutElements/Element;->setTtileGameName(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public go_back(Landroid/view/View;)V
    .locals 0

    .line 304
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->finish()V

    return-void
.end method

.method public guardarPartidaDialog()V
    .locals 3

    .line 353
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    .line 355
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110111

    .line 357
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110175

    .line 359
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$5;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$5;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;)V

    const v2, 0x7f1100b7

    .line 361
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$4;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$4;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;)V

    const v2, 0x7f11014a

    .line 369
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public iniciarConfig(Landroid/view/View;)V
    .locals 0

    .line 271
    :try_start_0
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->iniConfig()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public iniciarJuego(Landroid/view/View;)V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->jugar()V

    return-void
.end method

.method public iniciarRanking(Landroid/view/View;)V
    .locals 1

    .line 299
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/table/TableViewRanking;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public iniciarReglas(Landroid/view/View;)V
    .locals 1

    .line 294
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/juegos/Reglas;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public insertar()V
    .locals 3

    const-string v0, "Usuario"

    const/4 v1, 0x0

    .line 333
    invoke-virtual {p0, v0, v1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->user:Landroid/content/SharedPreferences;

    .line 334
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    if-nez v0, :cond_0

    .line 335
    new-instance v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$3;

    invoke-direct {v0, p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$3;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;)V

    .line 346
    invoke-virtual {v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$3;->start()V

    .line 347
    iget-object v0, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->user:Landroid/content/SharedPreferences;

    const-string v1, "correo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->guardarPartidaDialog()V

    :cond_0
    return-void
.end method

.method public jugar()V
    .locals 2

    const/4 v0, 0x0

    .line 278
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    .line 280
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->juego:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 281
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lsoft/evm/amblyopiamobilegames/juegos/tetris/game/TetrisGame;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 89
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    .line 90
    sput-boolean p1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->requestWindowFeature(I)Z

    .line 94
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0d0023

    .line 96
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->setContentView(I)V

    const-string p1, "juego"

    .line 97
    sput-object p1, Lsoft/evm/amblyopiamobilegames/table/Partidas;->tabla:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->switchCase()V

    .line 101
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->interfaz()V

    .line 102
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->iniciarSharedDemo()V

    .line 103
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->comprobarTiempoDiario()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "connectivity"

    .line 311
    invoke-virtual {p0, v0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 312
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->internet:Z

    .line 314
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/Insertar;->internet:Z

    if-nez v0, :cond_1

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f11014d

    invoke-virtual {p0, v3}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 323
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->insertar()V

    .line 325
    sput-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->gameOver:Z

    .line 326
    sput-boolean v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->pause:Z

    .line 328
    invoke-direct {p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->comprobarTiempoDiario()V

    return-void
.end method

.method public reproducirVideo(Landroid/view/View;)V
    .locals 3

    .line 415
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.youtube://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->youtube_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 416
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 418
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public seguro()V
    .locals 3

    .line 379
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110185

    .line 383
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11014e

    .line 385
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$7;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$7;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;)V

    const v2, 0x7f11018a

    .line 387
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$6;

    invoke-direct {v1, p0}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity$6;-><init>(Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;)V

    const v2, 0x7f11014a

    .line 393
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public verInfo(Landroid/view/View;)V
    .locals 1

    .line 408
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/info/InfoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 409
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public verOpciones(Landroid/view/View;)V
    .locals 1

    .line 403
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lsoft/evm/amblyopiamobilegames/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    invoke-virtual {p0, p1}, Lsoft/evm/amblyopiamobilegames/juegos/GameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.class public Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;
.super Ljava/lang/Object;
.source "VPSoundpool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool$Player;
    }
.end annotation


# static fields
.field static ID_ANDROIDPAD:I = 0x0

.field static ID_DING_START:I = 0x0

.field static ID_DRUMBASSLOOP:I = 0x0

.field static ID_FLIPPER:I = 0x0

.field static ID_LAUNCH:I = 0x0

.field static ID_MESSAGE:I = 0x0

.field static ID_ROLLOVER:I = 0x0

.field static ID_START:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "VPSoundPool"

.field static NUM_DINGS:I = 0x0

.field private static final PITCHES:[F

.field private static final ROLLOVER_DURATION:F = 0.3f

.field private static andrModAmt:I

.field private static androidpad:Landroid/media/MediaPlayer;

.field private static cScore:I

.field private static currentDing:I

.field private static drumbass:Landroid/media/MediaPlayer;

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mContext:Landroid/content/Context;

.field private static mRandom:Ljava/util/Random;

.field private static mSoundPool:Landroid/media/SoundPool;

.field private static mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static musicEnabled:Z

.field private static prevDing:I

.field private static soundEnabled:Z

.field private static volatile soundsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mRandom:Ljava/util/Random;

    const/4 v0, 0x1

    .line 24
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundEnabled:Z

    .line 25
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->musicEnabled:Z

    const/4 v0, 0x0

    .line 26
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->cScore:I

    .line 27
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->currentDing:I

    const/16 v1, 0xa

    .line 28
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->andrModAmt:I

    .line 33
    sput-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundsLoaded:Z

    .line 35
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DING_START:I

    const/4 v0, 0x6

    .line 36
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->NUM_DINGS:I

    const/16 v1, 0x64

    .line 38
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_LAUNCH:I

    const/16 v1, 0x65

    .line 39
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_FLIPPER:I

    const/16 v1, 0x66

    .line 40
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_MESSAGE:I

    const/16 v1, 0x67

    .line 41
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_START:I

    const/16 v1, 0xc8

    .line 43
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_ROLLOVER:I

    const/16 v1, 0x12c

    .line 45
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_ANDROIDPAD:I

    const/16 v1, 0x12d

    .line 46
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DRUMBASSLOOP:I

    new-array v0, v0, [F

    .line 156
    fill-array-data v0, :array_0

    sput-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->PITCHES:[F

    return-void

    :array_0
    .array-data 4
        0x3f4b2ffa
        0x3f6411f7
        0x3f800000    # 1.0f
        0x3f9837f7
        0x3faadc10
        0x3fcb3001
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanup()V
    .locals 3

    const-string v0, "VPSoundPool"

    const-string v1, "cleanup start"

    .line 207
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    const/4 v1, 0x0

    .line 209
    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    .line 210
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 211
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    .line 212
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 213
    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    .line 214
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->androidpad:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 215
    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->androidpad:Landroid/media/MediaPlayer;

    const-string v1, "cleanup finished"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initSounds(Landroid/content/Context;)V
    .locals 3

    const-string v0, "VPSoundPool"

    const-string v1, "initSounds"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mContext:Landroid/content/Context;

    .line 53
    new-instance p0, Landroid/media/SoundPool;

    const/16 v0, 0x20

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    .line 54
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    .line 55
    sget-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    sput-object p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static loadSounds()V
    .locals 7

    const-string v0, "VPSoundPool"

    const-string v1, "loadSounds start"

    .line 64
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 65
    sput-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundsLoaded:Z

    .line 66
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 67
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 69
    :try_start_0
    sget-object v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DING_START:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/bumper/dinga1.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DING_START:I

    add-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/bumper/dingc1.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DING_START:I

    add-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/bumper/dingc2.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DING_START:I

    add-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/bumper/dingd1.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DING_START:I

    add-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/bumper/dinge1.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DING_START:I

    add-int/lit8 v3, v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/bumper/dingg1.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_LAUNCH:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/misc/andBounce2.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_FLIPPER:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/misc/flipper1.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_MESSAGE:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/misc/message2.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_START:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/misc/startup1.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_ROLLOVER:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    const-string v5, "audio/misc/rolloverE.ogg"

    invoke-virtual {v2, v5}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    invoke-virtual {v4, v2, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mContext:Landroid/content/Context;

    const v2, 0x7f100002

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    .line 83
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f100000

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    sput-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->androidpad:Landroid/media/MediaPlayer;

    .line 85
    sput-boolean v6, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundsLoaded:Z

    .line 86
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->resetMusicState()V

    const-string v1, "loadSounds finished"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error loading sounds"

    .line 90
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static pauseMusic()V
    .locals 1

    .line 196
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundsLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 201
    :cond_1
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->androidpad:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->androidpad:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_2
    return-void
.end method

.method public static playBall()V
    .locals 2

    .line 179
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_LAUNCH:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playSound(IFF)V

    return-void
.end method

.method public static playFlipper()V
    .locals 2

    .line 183
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_FLIPPER:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playSound(IFF)V

    return-void
.end method

.method public static playMessage()V
    .locals 3

    .line 192
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_MESSAGE:I

    const v1, 0x3f28f5c3    # 0.66f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playSound(IFF)V

    return-void
.end method

.method public static playRollover()V
    .locals 7

    .line 162
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundsLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mRandom:Ljava/util/Random;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 165
    sget-object v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mRandom:Ljava/util/Random;

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 166
    sget-object v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 169
    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_ROLLOVER:I

    sget-object v4, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->PITCHES:[F

    aget v5, v4, v0

    const v6, 0x3e99999a    # 0.3f

    invoke-static {v3, v6, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playSound(IFF)V

    if-eq v2, v0, :cond_1

    .line 171
    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_ROLLOVER:I

    aget v5, v4, v2

    invoke-static {v3, v6, v5}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playSound(IFF)V

    :cond_1
    if-eq v1, v0, :cond_2

    if-eq v1, v2, :cond_2

    .line 174
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_ROLLOVER:I

    aget v1, v4, v1

    invoke-static {v0, v6, v1}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playSound(IFF)V

    :cond_2
    return-void
.end method

.method public static playScore()V
    .locals 4

    .line 127
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundsLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    :goto_0
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->currentDing:I

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->prevDing:I

    if-ne v0, v1, :cond_1

    .line 131
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mRandom:Ljava/util/Random;

    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->NUM_DINGS:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->currentDing:I

    goto :goto_0

    .line 133
    :cond_1
    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_DING_START:I

    add-int/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v0, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playSound(IFF)V

    .line 134
    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->currentDing:I

    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->prevDing:I

    .line 137
    sget v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->cScore:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->cScore:I

    .line 138
    sget-boolean v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->musicEnabled:Z

    if-eqz v3, :cond_2

    rem-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_2

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 140
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 145
    :cond_2
    sget-boolean v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->musicEnabled:Z

    if-eqz v1, :cond_3

    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->androidpad:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_3

    sget v2, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->cScore:I

    sget v3, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->andrModAmt:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 146
    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 147
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->androidpad:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 148
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->andrModAmt:I

    add-int/lit8 v0, v0, 0x2a

    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->andrModAmt:I

    :cond_3
    return-void
.end method

.method static playSound(IFF)V
    .locals 7

    .line 116
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundsLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPoolMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 121
    sget-object v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v2, p1

    move v3, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_1
    return-void
.end method

.method public static playStart()V
    .locals 3

    .line 187
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->resetMusicState()V

    .line 188
    sget v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->ID_START:I

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->playSound(IFF)V

    return-void
.end method

.method public static resetMusicState()V
    .locals 2

    .line 106
    sget-boolean v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundsLoaded:Z

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->pauseMusic()V

    const/4 v0, 0x0

    .line 109
    sput v0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->cScore:I

    const/16 v1, 0xa

    .line 110
    sput v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->andrModAmt:I

    .line 111
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->drumbass:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 112
    :cond_1
    sget-object v1, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->androidpad:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_2
    return-void
.end method

.method public static setMusicEnabled(Z)V
    .locals 0

    .line 99
    sput-boolean p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->musicEnabled:Z

    if-nez p0, :cond_0

    .line 101
    invoke-static {}, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->resetMusicState()V

    :cond_0
    return-void
.end method

.method public static setSoundEnabled(Z)V
    .locals 0

    .line 95
    sput-boolean p0, Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/VPSoundpool;->soundEnabled:Z

    return-void
.end method

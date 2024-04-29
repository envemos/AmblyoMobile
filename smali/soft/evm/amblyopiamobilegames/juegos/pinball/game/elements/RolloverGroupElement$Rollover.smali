.class Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement$Rollover;
.super Ljava/lang/Object;
.source "RolloverGroupElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/elements/RolloverGroupElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rollover"
.end annotation


# instance fields
.field color:Lsoft/evm/amblyopiamobilegames/juegos/pinball/game/Color;

.field cx:F

.field cy:F

.field radius:F

.field radiusSquared:F

.field resetDelay:F

.field score:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

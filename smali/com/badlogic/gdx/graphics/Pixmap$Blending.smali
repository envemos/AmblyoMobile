.class public final enum Lcom/badlogic/gdx/graphics/Pixmap$Blending;
.super Ljava/lang/Enum;
.source "Pixmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/Pixmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Blending"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/graphics/Pixmap$Blending;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Blending;

.field public static final enum None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

.field public static final enum SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 85
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Pixmap$Blending;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    const-string v3, "SourceOver"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/graphics/Pixmap$Blending;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 84
    sput-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->$VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    .locals 1

    .line 84
    const-class v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    .locals 1

    .line 84
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->$VALUES:[Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/graphics/Pixmap$Blending;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-object v0
.end method

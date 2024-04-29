.class public Lsoft/evm/amblyopiamobilegames/model/PartidaContract$Partida;
.super Ljava/lang/Object;
.source "PartidaContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsoft/evm/amblyopiamobilegames/model/PartidaContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Partida"
.end annotation


# static fields
.field public static final COLUMN_NAME_CORREO:Ljava/lang/String; = "CORREO"

.field public static final COLUMN_NAME_DEVICE:Ljava/lang/String; = "DISPOSITIVO"

.field public static final COLUMN_NAME_DIA:Ljava/lang/String; = "DIA"

.field public static final COLUMN_NAME_JUEGO:Ljava/lang/String; = "JUEGO"

.field public static final COLUMN_NAME_NOMBRE:Ljava/lang/String; = "USUARIO"

.field public static final COLUMN_NAME_S1:Ljava/lang/String; = "S1"

.field public static final COLUMN_NAME_S2:Ljava/lang/String; = "S2"

.field public static final COLUMN_NAME_SUBIDO:Ljava/lang/String; = "SUBIDO"

.field public static final COLUMN_NAME_TIEMPO:Ljava/lang/String; = "TIEMPO"

.field public static final TABLE_NAME_HISTORIAL:Ljava/lang/String; = "HISTORIAL"

.field public static final TABLE_NAME_RANKING:Ljava/lang/String; = "RANKING"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

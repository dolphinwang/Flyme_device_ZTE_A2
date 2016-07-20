.class public final enum Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;
.super Ljava/lang/Enum;
.source "CursorSymbolDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiStrokeStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

.field public static final enum IGNORE_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

.field public static final enum RESPECT_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    const-string v1, "IGNORE_POSITION"

    invoke-direct {v0, v1, v2}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->IGNORE_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    .line 147
    new-instance v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    const-string v1, "RESPECT_POSITION"

    invoke-direct {v0, v1, v3}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->RESPECT_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    sget-object v1, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->IGNORE_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->RESPECT_POSITION:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->$VALUES:[Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    const-class v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    return-object v0
.end method

.method public static values()[Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->$VALUES:[Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    invoke-virtual {v0}, [Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$MultiStrokeStrategy;

    return-object v0
.end method

.class public final enum Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;
.super Ljava/lang/Enum;
.source "SymbolGestureLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

.field public static final enum BEST_MATCH:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

.field public static final enum FIRST_MATCH:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

.field public static final enum HIGH_THRESHOLD:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 805
    new-instance v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    const-string v1, "BEST_MATCH"

    invoke-direct {v0, v1, v2}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->BEST_MATCH:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    .line 808
    new-instance v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    const-string v1, "FIRST_MATCH"

    invoke-direct {v0, v1, v3}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->FIRST_MATCH:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    .line 811
    new-instance v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    const-string v1, "HIGH_THRESHOLD"

    invoke-direct {v0, v1, v4}, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->HIGH_THRESHOLD:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    .line 802
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    sget-object v1, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->BEST_MATCH:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->FIRST_MATCH:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->HIGH_THRESHOLD:Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->$VALUES:[Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

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
    .line 802
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 802
    const-class v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    return-object v0
.end method

.method public static values()[Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;
    .locals 1

    .prologue
    .line 802
    sget-object v0, Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->$VALUES:[Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    invoke-virtual {v0}, [Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hcrest/gestures/symbol/SymbolGestureLibrary$MatchStrategy$Type;

    return-object v0
.end method

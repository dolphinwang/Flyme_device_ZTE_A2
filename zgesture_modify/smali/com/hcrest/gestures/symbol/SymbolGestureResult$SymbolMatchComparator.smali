.class Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;
.super Ljava/lang/Object;
.source "SymbolGestureResult.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/symbol/SymbolGestureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SymbolMatchComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/hcrest/gestures/symbol/SymbolMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hcrest/gestures/symbol/SymbolGestureResult;


# direct methods
.method private constructor <init>(Lcom/hcrest/gestures/symbol/SymbolGestureResult;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;->this$0:Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hcrest/gestures/symbol/SymbolGestureResult;Lcom/hcrest/gestures/symbol/SymbolGestureResult$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .param p2, "x1"    # Lcom/hcrest/gestures/symbol/SymbolGestureResult$1;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;-><init>(Lcom/hcrest/gestures/symbol/SymbolGestureResult;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hcrest/gestures/symbol/SymbolMatch;Lcom/hcrest/gestures/symbol/SymbolMatch;)I
    .locals 4
    .param p1, "lhs"    # Lcom/hcrest/gestures/symbol/SymbolMatch;
    .param p2, "rhs"    # Lcom/hcrest/gestures/symbol/SymbolMatch;

    .prologue
    .line 258
    invoke-virtual {p2}, Lcom/hcrest/gestures/symbol/SymbolMatch;->getPercentMatch()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/SymbolMatch;->getPercentMatch()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 250
    check-cast p1, Lcom/hcrest/gestures/symbol/SymbolMatch;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/hcrest/gestures/symbol/SymbolMatch;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/hcrest/gestures/symbol/SymbolGestureResult$SymbolMatchComparator;->compare(Lcom/hcrest/gestures/symbol/SymbolMatch;Lcom/hcrest/gestures/symbol/SymbolMatch;)I

    move-result v0

    return v0
.end method

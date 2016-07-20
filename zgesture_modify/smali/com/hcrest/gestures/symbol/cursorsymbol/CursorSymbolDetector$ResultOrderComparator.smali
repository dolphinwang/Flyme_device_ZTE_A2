.class Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$ResultOrderComparator;
.super Ljava/lang/Object;
.source "CursorSymbolDetector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/hcrest/gestures/symbol/SymbolGestureResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;


# direct methods
.method private constructor <init>(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$ResultOrderComparator;->this$0:Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;
    .param p2, "x1"    # Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$1;

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$ResultOrderComparator;-><init>(Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hcrest/gestures/symbol/SymbolGestureResult;Lcom/hcrest/gestures/symbol/SymbolGestureResult;)I
    .locals 2
    .param p1, "lhs"    # Lcom/hcrest/gestures/symbol/SymbolGestureResult;
    .param p2, "rhs"    # Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .prologue
    .line 460
    invoke-virtual {p1}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPath()Lcom/hcrest/gestures/symbol/PathSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hcrest/gestures/symbol/PathSegment;->getLeft()F

    move-result v0

    invoke-virtual {p2}, Lcom/hcrest/gestures/symbol/SymbolGestureResult;->getPath()Lcom/hcrest/gestures/symbol/PathSegment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hcrest/gestures/symbol/PathSegment;->getLeft()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 451
    check-cast p1, Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/hcrest/gestures/symbol/SymbolGestureResult;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/hcrest/gestures/symbol/cursorsymbol/CursorSymbolDetector$ResultOrderComparator;->compare(Lcom/hcrest/gestures/symbol/SymbolGestureResult;Lcom/hcrest/gestures/symbol/SymbolGestureResult;)I

    move-result v0

    return v0
.end method

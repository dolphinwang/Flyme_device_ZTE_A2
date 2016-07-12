.class public Lcom/android/server/wm/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# static fields
.field private static final DEFAULT_DIM_DURATION:I = 0xc8


# instance fields
.field mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

.field private mBottomBoundLimit:I

.field private mBottomBoundLimitFirstLaunch:I

.field private mBounds:Landroid/graphics/Rect;

.field mDeferDetach:Z

.field private mDimLayer:Lcom/android/server/wm/DimLayer;

.field mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field mDimmingTag:Z

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayRotation:I

.field final mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

.field private mFloatStackLandHeight:I

.field private mFloatStackLandWidth:I

.field private mFloatStackPortHeight:I

.field private mFloatStackPortWidth:I

.field private mFullscreen:Z

.field private mInited:Z

.field private mLeftBoundLimit:I

.field mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

.field private mOrientation:I

.field private mRightBoundLimit:I

.field private mRightBoundLimitFirstLaunch:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mStackBackgroundEnabled:Z

.field mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

.field final mStackId:I

.field private mStacksOffset:I

.field private final mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopBoundLimit:I

.field private mTopFloatStack:Lcom/android/server/wm/TaskStack;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "stackId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 69
    iput-boolean v4, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 88
    new-instance v0, Lcom/android/server/wm/AppTokenList;

    invoke-direct {v0}, Lcom/android/server/wm/AppTokenList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1046
    iput v4, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 1047
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 1050
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    .line 1051
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    .line 1052
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    .line 1053
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    .line 1054
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    .line 1055
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    .line 1056
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    .line 1057
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    .line 1058
    iput v3, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    .line 1059
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    .line 1069
    iput-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 95
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 96
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->getInstance()Lcom/mediatek/multiwindow/MultiWindowProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    .line 100
    :cond_0
    const/16 v0, 0x791c

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 102
    return-void
.end method

.method private adjustStackBackgroundAnimator()Lcom/android/server/wm/WindowStateAnimator;
    .locals 8

    .prologue
    .line 863
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 864
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "winNdx":I
    :goto_0
    if-ltz v3, :cond_4

    .line 865
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 866
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_1

    .line 864
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 868
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 869
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_0

    .line 871
    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 872
    .local v0, "stackId":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isFullFloatWindow()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 873
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_3

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]adjustStackBackgroundAnimator WinAnimator:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_3
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 878
    .end local v0    # "stackId":I
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return-object v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private adjustStackBackgroundLayer()I
    .locals 8

    .prologue
    .line 883
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v4

    .line 884
    .local v4, "windows":Lcom/android/server/wm/WindowList;
    const/4 v3, 0x0

    .local v3, "winNdx":I
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 885
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 886
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_1

    .line 884
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 888
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskIdToTask:Landroid/util/SparseArray;

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v6, v6, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    .line 889
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_0

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_0

    .line 891
    :cond_2
    iget-object v5, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v5, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 892
    .local v0, "stackId":I
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v0, v5, :cond_0

    .line 893
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_3

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]adjustStackBackgroundLayer AnimLayer:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_3
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 898
    .end local v0    # "stackId":I
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :goto_1
    return v5

    :cond_4
    const/4 v5, -0x1

    goto :goto_1
.end method

.method private computeBoundaryLimit()V
    .locals 10

    .prologue
    .line 623
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 624
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    const/16 v3, 0xdc

    .line 625
    .local v3, "stackBoundsMarginDp":I
    const/16 v4, 0x32

    .line 626
    .local v4, "stacksOffsetDp":I
    const/16 v1, 0x2c

    .line 628
    .local v1, "floatDecorHeightDp":I
    iget v7, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/2addr v7, v3

    div-int/lit16 v7, v7, 0xa0

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    .line 629
    iget v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v8, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    .line 632
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 633
    .local v5, "tempContent":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v7, v5}, Landroid/view/WindowManagerPolicy;->getContentRectLw(Landroid/graphics/Rect;)V

    .line 634
    iget v7, v5, Landroid/graphics/Rect;->top:I

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    .line 635
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/2addr v8, v1

    div-int/lit16 v8, v8, 0xa0

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    .line 638
    iget v7, v0, Landroid/view/DisplayInfo;->appWidth:I

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    .line 639
    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    .line 642
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    .line 643
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 644
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 645
    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v7, :cond_2

    .line 658
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_0
    :goto_1
    iget v7, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    mul-int/2addr v7, v4

    div-int/lit16 v7, v7, 0xa0

    iput v7, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    .line 659
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v7, :cond_1

    .line 660
    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[BMW]computeBoundaryLimit mTopBoundLimit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mBottomBoundLimit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mTopFloatStack = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mStacksOffset = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1
    return-void

    .line 648
    .restart local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v8

    iget v8, v8, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v7, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v8, v8, Lcom/android/server/wm/AppWindowToken;->groupId:I

    invoke-virtual {v7, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isInMiniMax(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 652
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    goto :goto_1

    .line 643
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0
.end method

.method private computeStackSize(I)Landroid/graphics/Rect;
    .locals 8
    .param p1, "orientation"    # I

    .prologue
    const/4 v7, 0x0

    .line 670
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 671
    .local v3, "stackSize":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 673
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    const/16 v5, 0x9

    if-ne p1, v5, :cond_9

    .line 675
    :cond_0
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    if-nez v5, :cond_1

    .line 676
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_8

    .line 677
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    .line 681
    :goto_0
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    .line 683
    :cond_1
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 684
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v6, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 702
    :goto_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->computeBoundaryLimit()V

    .line 704
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    if-eqz v5, :cond_6

    .line 705
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 706
    .local v0, "bound":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 709
    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    add-int v2, v5, v6

    .line 710
    .local v2, "left":I
    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    add-int v4, v5, v6

    .line 711
    .local v4, "top":I
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    if-gt v2, v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v2

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimitFirstLaunch:I

    if-le v5, v6, :cond_3

    .line 713
    :cond_2
    const/4 v2, 0x0

    .line 715
    :cond_3
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    if-gt v4, v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-nez v5, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v4

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimitFirstLaunch:I

    if-le v5, v6, :cond_5

    .line 717
    :cond_4
    iget v4, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    .line 719
    :cond_5
    invoke-virtual {v3, v2, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 721
    .end local v0    # "bound":Landroid/graphics/Rect;
    .end local v2    # "left":I
    .end local v4    # "top":I
    :cond_6
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_7

    .line 722
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]computeStackSize boxSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_7
    return-object v3

    .line 679
    :cond_8
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    goto/16 :goto_0

    .line 687
    :cond_9
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    if-nez v5, :cond_a

    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    if-nez v5, :cond_a

    .line 688
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ge v5, v6, :cond_b

    .line 689
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    .line 693
    :goto_2
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    .line 695
    :cond_a
    iget v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    invoke-virtual {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 696
    iget v5, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget v6, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    goto/16 :goto_1

    .line 691
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    goto :goto_2
.end method

.method private deltaRotation(I)I
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 561
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    sub-int v0, p1, v1

    .line 562
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 563
    :cond_0
    return v0
.end method

.method private getDimBehindFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 339
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 340
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1130000

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 342
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 343
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 347
    :cond_0
    :goto_0
    return-wide p1

    .line 344
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 345
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_0
.end method

.method private initFloatStackSize(I)Z
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 522
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW]initFloatStackSize orientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    if-eqz v3, :cond_0

    .line 525
    const-string v2, "WindowManager"

    const-string v3, "[BMW]Floating stack had been inited!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :goto_0
    return v1

    .line 529
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-nez v3, :cond_1

    .line 530
    const-string v2, "WindowManager"

    const-string v3, "[BMW]Multi Window Service not ready!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget v4, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 535
    const-string v2, "WindowManager"

    const-string v3, "[BMW]Non floating stack did the function initFloatStackSize"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 543
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 544
    if-eqz p1, :cond_3

    const/16 v3, 0x8

    if-ne p1, v3, :cond_4

    .line 547
    :cond_3
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    .line 550
    :cond_4
    iget v3, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->computeStackSize(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 552
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW]initFloatStackSize mBounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    iget v3, v3, Landroid/view/DisplayInfo;->rotation:I

    iput v3, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 554
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    .line 555
    iput v1, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    .line 556
    iput-boolean v2, p0, Lcom/android/server/wm/TaskStack;->mInited:Z

    move v1, v2

    .line 557
    goto :goto_0
.end method

.method private needShowStackBackground()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 909
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget v8, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v6, v8}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    move v6, v7

    .line 928
    :goto_0
    return v6

    .line 914
    :cond_1
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "taskNdx":I
    :goto_1
    if-ltz v0, :cond_5

    .line 915
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v2, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 916
    .local v2, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "tokenNdx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 917
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 918
    .local v5, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_3
    if-ltz v4, :cond_3

    .line 919
    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 920
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "SurfaceView"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 923
    const/4 v6, 0x1

    goto :goto_0

    .line 918
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 916
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 914
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Lcom/android/server/wm/WindowList;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .end local v1    # "tokenNdx":I
    .end local v2    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_5
    move v6, v7

    .line 928
    goto :goto_0
.end method

.method private rotateBounds(III)V
    .locals 8
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .prologue
    .line 568
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 569
    .local v0, "pivotX":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 570
    .local v1, "pivotY":I
    const/4 v2, 0x0

    .local v2, "tmpX":I
    const/4 v3, 0x0

    .line 571
    .local v3, "tmpY":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 573
    .local v4, "tmpbounds":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->deltaRotation(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 601
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[BMW]rotateBounds exception, rotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDisplayRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 609
    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 611
    invoke-direct {p0, v4}, Lcom/android/server/wm/TaskStack;->verifyStackBounds(Landroid/graphics/Rect;)V

    .line 612
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 614
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 615
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 616
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    .line 618
    :cond_0
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    .line 620
    return-void

    .line 576
    :pswitch_0
    move v2, v1

    .line 577
    sub-int v3, p3, v0

    .line 580
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 581
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 582
    goto :goto_0

    .line 585
    :pswitch_1
    sub-int v2, p2, v0

    .line 586
    sub-int v3, p3, v1

    .line 588
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 589
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 590
    goto :goto_0

    .line 593
    :pswitch_2
    sub-int v2, p2, v1

    .line 594
    move v3, v0

    .line 596
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    .line 597
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    .line 598
    goto :goto_0

    .line 573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyStackBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 735
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 736
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->computeBoundaryLimit()V

    .line 738
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    if-ge v1, v2, :cond_0

    .line 739
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 742
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    if-le v1, v2, :cond_1

    .line 743
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 746
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    if-ge v1, v2, :cond_2

    .line 747
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 750
    :cond_2
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    if-le v1, v2, :cond_3

    .line 751
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 754
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-le v1, v2, :cond_4

    .line 755
    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 758
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-le v1, v2, :cond_5

    .line 759
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 761
    :cond_5
    return-void
.end method


# virtual methods
.method addTask(Lcom/android/server/wm/Task;Z)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 209
    if-nez p2, :cond_3

    .line 210
    const/4 v0, 0x0

    .line 224
    .local v0, "stackNdx":I
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addTask: task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " toTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 228
    iput-object p0, p1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 232
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 235
    iget-object v2, p1, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 240
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.android.camera.CameraLauncher"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 241
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskStack;->initFloatStackSize(I)Z

    .line 247
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 248
    const/16 v5, 0x791a

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/wm/Task;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v4

    if-eqz p2, :cond_7

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 249
    return-void

    .line 212
    .end local v0    # "stackNdx":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 213
    .restart local v0    # "stackNdx":I
    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    :cond_4
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_5

    .line 216
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v5, v2}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 221
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 243
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    iget v2, v1, Lcom/android/server/wm/AppWindowToken;->requestedOrientation:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskStack;->initFloatStackSize(I)Z

    goto :goto_1

    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7
    move v2, v4

    .line 248
    goto :goto_2
.end method

.method public adjustFloatingRect(II)V
    .locals 2
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 777
    iget v1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    if-eq v1, p2, :cond_1

    .line 778
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 779
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 780
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 781
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 782
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 783
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 784
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 786
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iput p1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    .line 787
    iput p2, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    .line 788
    return-void
.end method

.method animateDimLayers()Z
    .locals 7

    .prologue
    const-wide/16 v2, 0xc8

    .line 353
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v5, :cond_4

    .line 354
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v1

    .line 355
    .local v1, "dimLayer":I
    const/4 v0, 0x0

    .line 360
    .local v0, "dimAmount":F
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v4

    .line 361
    .local v4, "targetAlpha":F
    cmpl-float v5, v4, v0

    if-eqz v5, :cond_b

    .line 362
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v5, :cond_5

    .line 363
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 387
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 388
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v5

    if-nez v5, :cond_d

    .line 392
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-eq v5, v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_c

    .line 395
    :cond_2
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_3

    .line 396
    const-string v5, "WindowManager"

    const-string v6, "[BMW]mDimWinAnimator is the bottom window, do not show dimlayer"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_3
    :goto_2
    const/4 v5, 0x0

    :goto_3
    return v5

    .line 357
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v4    # "targetAlpha":F
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v5, -0x1

    .line 358
    .restart local v1    # "dimLayer":I
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v0    # "dimAmount":F
    goto :goto_0

    .line 365
    .restart local v4    # "targetAlpha":F
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    .line 368
    .local v2, "duration":J
    :cond_6
    cmpl-float v5, v4, v0

    if-lez v5, :cond_7

    .line 369
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBehindFadeDuration(J)J

    move-result-wide v2

    .line 373
    :cond_7
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v6

    if-eq v5, v6, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getBottomWindow()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_a

    .line 376
    :cond_9
    sget-boolean v5, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v5, :cond_0

    .line 377
    const-string v5, "WindowManager"

    const-string v6, "[BMW]mDimWinAnimator is the bottom window, do not show dimlayer"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 381
    :cond_a
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    goto/16 :goto_1

    .line 384
    .end local v2    # "duration":J
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v5

    if-eq v5, v1, :cond_0

    .line 385
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_1

    .line 400
    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    goto :goto_2

    .line 403
    :cond_d
    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v5

    goto :goto_3
.end method

.method attachDisplayContent(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attachDisplayContent: Already attached"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 286
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 287
    new-instance v0, Lcom/android/server/wm/DimLayer;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 289
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    invoke-virtual {v0}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isStackBackgroundEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundEnabled:Z

    .line 294
    new-instance v0, Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p0, p1}, Lcom/android/server/wm/StackBackgroundSurface;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->prepareSurface()V

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo()V

    .line 299
    return-void
.end method

.method close()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 473
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v0, v0, Lcom/android/server/wm/StackBackgroundSurface;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 478
    :cond_0
    return-void
.end method

.method detachDisplay()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 302
    const/16 v6, 0x791e

    iget v7, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(II)I

    .line 304
    const/4 v3, 0x0

    .line 305
    .local v3, "doAnotherLayoutPass":Z
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    .line 306
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v1, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 307
    .local v1, "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "appNdx":I
    :goto_1
    if-ltz v0, :cond_1

    .line 308
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 309
    .local v2, "appWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "winNdx":I
    :goto_2
    if-ltz v5, :cond_0

    .line 310
    iget-object v7, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/WindowManagerService;->removeWindowInnerLocked(Lcom/android/server/wm/Session;Lcom/android/server/wm/WindowState;)V

    .line 311
    const/4 v3, 0x1

    .line 309
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 307
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 305
    .end local v2    # "appWindows":Lcom/android/server/wm/WindowList;
    .end local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 315
    .end local v0    # "appNdx":I
    .end local v1    # "appWindowTokens":Lcom/android/server/wm/AppTokenList;
    :cond_2
    if-eqz v3, :cond_3

    .line 316
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 319
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 320
    iput-object v8, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 321
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 322
    iput-object v8, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    .line 324
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v6, :cond_4

    .line 326
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v6}, Lcom/android/server/wm/StackBackgroundSurface;->destroySurface()V

    .line 327
    iput-object v8, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    .line 330
    :cond_4
    iput-object v8, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 331
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 481
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mStackId="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 482
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mDeferDetach="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/wm/TaskStack;->mDeferDetach:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 483
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 484
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 483
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 487
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 490
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 491
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mDimLayer:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 493
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "mDimWinAnimator="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 495
    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 496
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 497
    const-string v3, "  Exiting application tokens:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 499
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    .line 500
    .local v2, "token":Lcom/android/server/wm/WindowToken;
    const-string v3, "  Exiting App #"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const/16 v3, 0x20

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 502
    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(C)V

    .line 503
    const-string v3, "    "

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 498
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 507
    .end local v0    # "i":I
    .end local v2    # "token":Lcom/android/server/wm/WindowToken;
    :cond_3
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskStack;->dumpOthers(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 511
    :cond_4
    return-void
.end method

.method public dumpOthers(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 801
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FLOATING LAYOUT POLICY INFO:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisplayRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 803
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Launch Mode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mOrientation:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 808
    :cond_0
    const-string v0, "Portrait"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 812
    :goto_0
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mXOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 813
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mYOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 814
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFloatStackPortWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 815
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFloatStackPortHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackPortHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 816
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFloatStackLandWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 817
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFloatStackLandHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mFloatStackLandHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 818
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mTopBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 819
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBottomBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mBottomBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 820
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRightBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mRightBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 821
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLeftBoundLimit="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mLeftBoundLimit:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 822
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStacksOffset="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskStack;->mStacksOffset:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 823
    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTopFloatStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTopFloatStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 824
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 826
    return-void

    .line 810
    :cond_1
    const-string v0, "Landscape"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method getBottomWindow()Lcom/android/server/wm/WindowState;
    .locals 9

    .prologue
    .line 1027
    const/4 v3, 0x0

    .line 1028
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1029
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 1030
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    .local v2, "tokenNdx":I
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1031
    iget-object v6, v0, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 1032
    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    const/4 v5, 0x0

    .local v5, "winNdx":I
    :goto_1
    iget-object v6, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 1033
    iget-object v6, v1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1034
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    if-eqz v3, :cond_1

    .line 1035
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v6, :cond_0

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BMW]getBottomWindow win:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v4, v3

    .line 1041
    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "tokenNdx":I
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v5    # "winNdx":I
    .local v4, "win":Lcom/android/server/wm/WindowState;
    :goto_2
    return-object v4

    .line 1032
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    .restart local v2    # "tokenNdx":I
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v5    # "winNdx":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1030
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "task":Lcom/android/server/wm/Task;
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    .end local v2    # "tokenNdx":I
    .end local v5    # "winNdx":I
    :cond_3
    move-object v4, v3

    .line 1041
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .restart local v4    # "win":Lcom/android/server/wm/WindowState;
    goto :goto_2
.end method

.method getBounds(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 173
    return-void
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method public getStackBounds(III)Landroid/graphics/Rect;
    .locals 1
    .param p1, "rotation"    # I
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I

    .prologue
    .line 765
    iget v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayRotation:I

    if-ne v0, p1, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    .line 772
    :goto_0
    return-object v0

    .line 770
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/TaskStack;->rotateBounds(III)V

    .line 772
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getStackOffsets([I)V
    .locals 2
    .param p1, "offsets"    # [I

    .prologue
    .line 792
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offsets must be an array of two integers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mXOffset:I

    aput v1, p1, v0

    .line 796
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mYOffset:I

    aput v1, p1, v0

    .line 797
    return-void
.end method

.method getTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    return-object v0
.end method

.method isAnimating()Z
    .locals 7

    .prologue
    .line 187
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_4

    .line 188
    iget-object v6, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Task;

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 189
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v5, v6, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 191
    .local v5, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "winNdx":I
    :goto_2
    if-ltz v4, :cond_2

    .line 192
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    iget-object v3, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 193
    .local v3, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v6, :cond_1

    .line 194
    :cond_0
    const/4 v6, 0x1

    .line 199
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :goto_3
    return v6

    .line 191
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    .restart local v4    # "winNdx":I
    .restart local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 189
    .end local v3    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 187
    .end local v4    # "winNdx":I
    .end local v5    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 199
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_3
.end method

.method isDimming()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    return v0
.end method

.method isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFullscreen()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    return v0
.end method

.method moveTaskToBottom(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 259
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToBottom: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 262
    return-void
.end method

.method moveTaskToTop(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveTaskToTop: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 255
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskStack;->addTask(Lcom/android/server/wm/Task;Z)V

    .line 256
    return-void
.end method

.method onWinCropChanged(Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "crop"    # Landroid/graphics/Rect;

    .prologue
    .line 979
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 980
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceCropChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", crop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 988
    :cond_1
    :goto_0
    return-void

    .line 985
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/StackBackgroundSurface;->setWindowCrop(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method onWinHiden(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 1014
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceHiden winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setStackBackground(Z)V

    .line 1016
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1021
    :cond_1
    :goto_0
    return-void

    .line 1018
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->hide()V

    goto :goto_0
.end method

.method onWinMatrixChanged(Lcom/android/server/wm/WindowStateAnimator;FFFF)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "dsdx"    # F
    .param p3, "dtdx"    # F
    .param p4, "dsdy"    # F
    .param p5, "dtdy"    # F

    .prologue
    .line 965
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 966
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceMatrixChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dsdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dtdx:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dsdy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dtdy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 975
    :cond_1
    :goto_0
    return-void

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/wm/StackBackgroundSurface;->setMatrix(FFFF)V

    goto :goto_0
.end method

.method onWinPositionChanged(Lcom/android/server/wm/WindowStateAnimator;FF)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "left"    # F
    .param p3, "top"    # F

    .prologue
    .line 935
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 936
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfacePositionChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 945
    :cond_1
    :goto_0
    return-void

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    goto :goto_0
.end method

.method onWinShown(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 993
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceShown winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setStackBackground(Z)V

    .line 995
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 1009
    :cond_1
    :goto_0
    return-void

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 999
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackBackgroundSurface;->setPosition(FF)V

    .line 1000
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    .line 1001
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v4, v4, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/StackBackgroundSurface;->setMatrix(FFFF)V

    .line 1007
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->show()V

    goto :goto_0
.end method

.method onWinSizeChanged(Lcom/android/server/wm/WindowStateAnimator;II)V
    .locals 3
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 950
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    .line 951
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BMW]onSurfaceSizeChanged winAnimator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 959
    :cond_1
    :goto_0
    return-void

    .line 956
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne p1, v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StackBackgroundSurface;->setSize(II)V

    goto :goto_0
.end method

.method removeTask(Lcom/android/server/wm/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeTask: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayContent;->moveStack(Lcom/android/server/wm/TaskStack;Z)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 278
    :cond_2
    return-void
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->hide()V

    .line 336
    return-void
.end method

.method resetDimmingTag()V
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    .line 411
    return-void
.end method

.method resetStackBackgroundAnimator()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBackgroundSurface;->hide()V

    .line 905
    :cond_0
    return-void
.end method

.method resizeWindows()V
    .locals 11

    .prologue
    .line 113
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-nez v8, :cond_2

    const/4 v4, 0x1

    .line 115
    .local v4, "underStatusBar":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v8, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 116
    .local v2, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "taskNdx":I
    :goto_1
    if-ltz v3, :cond_5

    .line 117
    iget-object v8, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Task;

    iget-object v0, v8, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 118
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_4

    .line 119
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    iget-object v7, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 120
    .local v7, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "winNdx":I
    :goto_3
    if-ltz v6, :cond_3

    .line 121
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 122
    .local v5, "win":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 123
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-eqz v8, :cond_0

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setBounds: Resizing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_1
    iput-boolean v4, v5, Lcom/android/server/wm/WindowState;->mUnderStatusBar:Z

    .line 120
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 113
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "taskNdx":I
    .end local v4    # "underStatusBar":Z
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 118
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v3    # "taskNdx":I
    .restart local v4    # "underStatusBar":Z
    .restart local v6    # "winNdx":I
    .restart local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 116
    .end local v6    # "winNdx":I
    .end local v7    # "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 131
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    .end local v1    # "activityNdx":I
    :cond_5
    return-void
.end method

.method setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V
    .locals 6
    .param p1, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "color"    # I

    .prologue
    .line 447
    iget v0, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 448
    .local v0, "animLayer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v0, v1, :cond_1

    .line 450
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->adjustAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v0

    .line 452
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 455
    :cond_1
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 136
    .local v0, "oldFullscreen":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BMW]setBounds bound = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", stackId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "setBounds"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    :cond_0
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget v2, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFloatingStack(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskStack;->verifyStackBounds(Landroid/graphics/Rect;)V

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-ne v0, v1, :cond_3

    .line 151
    const/4 v1, 0x0

    .line 168
    :goto_0
    return v1

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 155
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 157
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    if-eqz v1, :cond_4

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBackgroundSurface;->setBounds(Landroid/graphics/Rect;)V

    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resizeWindows()V

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    const/4 v1, 0x1

    goto :goto_0
.end method

.method setDimmingTag()V
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    .line 415
    return-void
.end method

.method setStackBackground(Z)V
    .locals 6
    .param p1, "forceShow"    # Z

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->needShowStackBackground()Z

    move-result v3

    if-nez v3, :cond_1

    .line 832
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resetStackBackgroundAnimator()V

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->adjustStackBackgroundAnimator()Lcom/android/server/wm/WindowStateAnimator;

    move-result-object v2

    .line 836
    .local v2, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW]setStackBackground winAnimator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_2
    if-nez v2, :cond_3

    .line 838
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->resetStackBackgroundAnimator()V

    goto :goto_0

    .line 841
    :cond_3
    const/4 v1, 0x0

    .line 842
    .local v1, "needUpdata":Z
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eq v2, v3, :cond_5

    .line 844
    :cond_4
    iput-object v2, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 845
    const/4 v1, 0x1

    .line 847
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/TaskStack;->adjustStackBackgroundLayer()I

    move-result v0

    .line 848
    .local v0, "animLayer":I
    if-gez v0, :cond_6

    .line 849
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 851
    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    add-int/lit8 v4, v0, -0x4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/StackBackgroundSurface;->setLayer(I)V

    .line 852
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v3, :cond_7

    .line 853
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BMW]setStackBackground mStackBackgroundAnimator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", animLayer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :cond_7
    if-eqz p1, :cond_0

    .line 857
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mStackBackgroundSurface:Lcom/android/server/wm/StackBackgroundSurface;

    invoke-virtual {v3}, Lcom/android/server/wm/StackBackgroundSurface;->show()V

    goto :goto_0
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 3
    .param p1, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 433
    .local v0, "existingDimWinAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v1, v2, :cond_1

    .line 436
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 438
    :cond_1
    return-void
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 444
    :cond_0
    return-void
.end method

.method switchUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 458
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 459
    .local v2, "top":I
    const/4 v1, 0x0

    .local v1, "taskNdx":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 460
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 461
    .local v0, "task":Lcom/android/server/wm/Task;
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 463
    iget-object v3, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v2, v2, -0x1

    .line 459
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_1
    return-void
.end method

.method testDimmingTag()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mDimmingTag:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplayInfo()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/server/wm/TaskStack;->mFullscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 178
    iget-object v0, p0, Lcom/android/server/wm/TaskStack;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;)Z

    .line 180
    :cond_0
    return-void
.end method

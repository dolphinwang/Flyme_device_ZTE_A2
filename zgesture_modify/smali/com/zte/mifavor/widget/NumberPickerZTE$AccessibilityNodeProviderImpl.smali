.class Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/NumberPickerZTE;)V
    .locals 1

    .prologue
    .line 2496
    iput-object p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2505
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2507
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2509
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 2898
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2899
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v5, Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2900
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6600(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2901
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2903
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2904
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2906
    :cond_0
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2907
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2908
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2911
    :cond_1
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2912
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2913
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2915
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2918
    .local v0, "applicationScale":F
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2919
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2920
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2921
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2923
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser()Z
    invoke-static {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6700(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2925
    move-object v2, v1

    .line 2926
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2927
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLocationOnScreen([I)V

    .line 2928
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2929
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2930
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2932
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_2

    .line 2933
    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2935
    :cond_2
    iget v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_3

    .line 2936
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2938
    :cond_3
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2939
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2940
    :cond_4
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2942
    :cond_5
    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v6}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_7

    .line 2943
    :cond_6
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2947
    :cond_7
    return-object v3
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    .line 2864
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2865
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2866
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6400(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2867
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2868
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2869
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2870
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2871
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2872
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2873
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2874
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2875
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {v4, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6500(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2876
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2877
    move-object v1, v0

    .line 2878
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2879
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v4, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLocationOnScreen([I)V

    .line 2880
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2881
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2883
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2884
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2886
    :cond_0
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    .line 2887
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2889
    :cond_1
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2890
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2893
    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v5, 0x2

    .line 2840
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2842
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2843
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_0

    .line 2844
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2846
    :cond_0
    iget v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_1

    .line 2847
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2849
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2850
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2851
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {v4, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6300(Lcom/zte/mifavor/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2852
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2853
    move-object v1, v0

    .line 2854
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2855
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v4, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getLocationOnScreen([I)V

    .line 2856
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2857
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2858
    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 4
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v3, 0x2

    .line 2795
    packed-switch p2, :pswitch_data_0

    .line 2836
    :cond_0
    :goto_0
    return-void

    .line 2797
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2798
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2801
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2807
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2808
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2811
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2815
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2816
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2819
    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2826
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2827
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2830
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2795
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2959
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2960
    .local v0, "value":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6900(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2961
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$7000(Lcom/zte/mifavor/widget/NumberPickerZTE;I)I

    move-result v0

    .line 2963
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$7100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2964
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$900(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$7200(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Ljava/lang/String;

    move-result-object v1

    .line 2967
    :goto_0
    return-object v1

    .line 2964
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$900(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$7100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2967
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2971
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mValue:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2972
    .local v0, "value":I
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mWrapSelectorWheel:Z
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6900(Lcom/zte/mifavor/widget/NumberPickerZTE;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2973
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$7000(Lcom/zte/mifavor/widget/NumberPickerZTE;I)I

    move-result v0

    .line 2975
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mMaxValue:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2976
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$900(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$7200(Lcom/zte/mifavor/widget/NumberPickerZTE;I)Ljava/lang/String;

    move-result-object v1

    .line 2979
    :goto_0
    return-object v1

    .line 2976
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$900(Lcom/zte/mifavor/widget/NumberPickerZTE;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mMinValue:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$7100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2979
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .prologue
    .line 2955
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 2781
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2782
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2783
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2784
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6200(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2785
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2786
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2787
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2788
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2790
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2770
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$6000(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2771
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2772
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2773
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2774
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2775
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1, v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2777
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2514
    packed-switch p1, :pswitch_data_0

    .line 2539
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2516
    :pswitch_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollY:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollY:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTop:I
    invoke-static {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3600(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2520
    :pswitch_2
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollY:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$3900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I
    invoke-static {v6}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    iget-object v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I
    invoke-static {v6}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v6

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2526
    :pswitch_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4600(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2531
    :pswitch_4
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mSelectionDividerHeight:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollX:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$4900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v5

    iget-object v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mLeft:I
    invoke-static {v6}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5000(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mScrollY:I
    invoke-static {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5100(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v0

    iget-object v6, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v6}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5200(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v6

    iget-object v7, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTop:I
    invoke-static {v7}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5300(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2514
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2545
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2546
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2568
    :goto_0
    return-object v0

    .line 2548
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2549
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2550
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2568
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2552
    :pswitch_1
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2554
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2556
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2563
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2550
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2575
    packed-switch p1, :pswitch_data_0

    .line 2742
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 2577
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2579
    :sswitch_0
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2580
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2581
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->requestAccessibilityFocus()Z

    move v0, v1

    .line 2582
    goto :goto_1

    .line 2587
    :sswitch_1
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2588
    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2589
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->clearAccessibilityFocus()V

    move v0, v1

    .line 2590
    goto :goto_1

    .line 2595
    :sswitch_2
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2597
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V
    invoke-static {v2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    move v0, v1

    .line 2598
    goto :goto_1

    .line 2603
    :sswitch_3
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2605
    :cond_2
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V
    invoke-static {v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    move v0, v1

    .line 2606
    goto :goto_1

    .line 2614
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2660
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_1

    .line 2616
    :sswitch_4
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2618
    iget-object v1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2623
    :sswitch_5
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2625
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    move v0, v1

    .line 2626
    goto/16 :goto_1

    .line 2631
    :sswitch_6
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2632
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->showSoftInput()V
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$2700(Lcom/zte/mifavor/widget/NumberPickerZTE;)V

    move v0, v1

    .line 2633
    goto/16 :goto_1

    .line 2638
    :sswitch_7
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2639
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2640
    invoke-virtual {p0, p1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2643
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2644
    goto/16 :goto_1

    .line 2649
    :sswitch_8
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2650
    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2651
    invoke-virtual {p0, p1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2654
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$100(Lcom/zte/mifavor/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2655
    goto/16 :goto_1

    .line 2667
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 2669
    :sswitch_9
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2670
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V
    invoke-static {v2, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    .line 2671
    invoke-virtual {p0, p1, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2673
    goto/16 :goto_1

    .line 2678
    :sswitch_a
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2679
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2680
    invoke-virtual {p0, p1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2683
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5500(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    move v0, v1

    .line 2685
    goto/16 :goto_1

    .line 2690
    :sswitch_b
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2691
    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2692
    invoke-virtual {p0, p1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2695
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1400(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5600(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    iget-object v5, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5700(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    move v0, v1

    .line 2697
    goto/16 :goto_1

    .line 2705
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_1

    .line 2707
    :sswitch_c
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2708
    if-ne p1, v1, :cond_3

    move v0, v1

    .line 2709
    .local v0, "increment":Z
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # invokes: Lcom/zte/mifavor/widget/NumberPickerZTE;->changeValueByOne(Z)V
    invoke-static {v2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$200(Lcom/zte/mifavor/widget/NumberPickerZTE;Z)V

    .line 2710
    invoke-virtual {p0, p1, v1}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2712
    goto/16 :goto_1

    .line 2717
    .end local v0    # "increment":Z
    :sswitch_d
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2718
    iput p1, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2719
    invoke-virtual {p0, p1, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2722
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5800(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    move v0, v1

    .line 2723
    goto/16 :goto_1

    .line 2728
    :sswitch_e
    iget v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2729
    iput v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2730
    invoke-virtual {p0, p1, v5}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2733
    iget-object v2, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    iget-object v3, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mRight:I
    invoke-static {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$5900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->this$0:Lcom/zte/mifavor/widget/NumberPickerZTE;

    # getter for: Lcom/zte/mifavor/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->access$1900(Lcom/zte/mifavor/widget/NumberPickerZTE;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->invalidate(IIII)V

    move v0, v1

    .line 2734
    goto/16 :goto_1

    .line 2575
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2577
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2614
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x40 -> :sswitch_7
        0x80 -> :sswitch_8
    .end sparse-switch

    .line 2667
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_9
        0x40 -> :sswitch_a
        0x80 -> :sswitch_b
    .end sparse-switch

    .line 2705
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_c
        0x40 -> :sswitch_d
        0x80 -> :sswitch_e
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2747
    packed-switch p1, :pswitch_data_0

    .line 2767
    :cond_0
    :goto_0
    return-void

    .line 2749
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2750
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2756
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2760
    :pswitch_2
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2761
    invoke-direct {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2747
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

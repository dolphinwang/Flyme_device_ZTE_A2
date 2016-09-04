.class public Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;
.super Ljava/lang/Object;
.source "ActivityCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/actionbar/ActivityCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BottomButton"
.end annotation


# instance fields
.field public leftEnable:Z

.field public leftTitle:Ljava/lang/String;

.field public leftVisible:Z

.field public mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

.field public mResid:I

.field public needUpdate:I

.field public rightEnable:Z

.field public rightTitle:Ljava/lang/String;

.field public rightVisible:Z

.field final synthetic this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

.field public visible:Z


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/actionbar/ActivityCommon;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 415
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->this$0:Lcom/zte/mifavor/actionbar/ActivityCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mResid:I

    .line 417
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->visible:Z

    .line 418
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftVisible:Z

    .line 419
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightVisible:Z

    .line 420
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftEnable:Z

    .line 421
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightEnable:Z

    .line 422
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftTitle:Ljava/lang/String;

    .line 423
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightTitle:Ljava/lang/String;

    .line 424
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    .line 425
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->needUpdate:I

    return-void
.end method


# virtual methods
.method public commitUpdate()V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    iget-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->visible:Z

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomBarVisible(Z)V

    .line 429
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v1, Lcom/zte/mifavor/actionbar/ActivityCommon;->LEFT_BUTTON:I

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonText(ILjava/lang/String;)V

    .line 432
    :cond_0
    const-string v0, "guojingdong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitUpdate1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 434
    const-string v0, "guojingdong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitUpdate2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v1, Lcom/zte/mifavor/actionbar/ActivityCommon;->RIGHT_BUTTON:I

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonText(ILjava/lang/String;)V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v1, Lcom/zte/mifavor/actionbar/ActivityCommon;->LEFT_BUTTON:I

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonVisible(IZ)V

    .line 438
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v1, Lcom/zte/mifavor/actionbar/ActivityCommon;->RIGHT_BUTTON:I

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonVisible(IZ)V

    .line 439
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v1, Lcom/zte/mifavor/actionbar/ActivityCommon;->LEFT_BUTTON:I

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftEnable:Z

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonEnable(IZ)V

    .line 440
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v1, Lcom/zte/mifavor/actionbar/ActivityCommon;->RIGHT_BUTTON:I

    iget-boolean v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightEnable:Z

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonEnable(IZ)V

    .line 441
    return-void
.end method

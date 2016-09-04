.class public Lcom/android/mipop/paintpad/activities/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/paintpad/activities/MainActivity$HomeReceiver;,
        Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;
    }
.end annotation


# static fields
.field private static final BLUR:I = 0x1

.field private static final DATACOLORSTART:I = 0xa

.field private static final DATASHAPESTART:I = 0x4

.field private static final EMBOSS:I = 0x2

.field private static final ERASER:I = -0x1

.field private static final PEN:I = 0x0

.field private static final TOAST_TIME:I = 0x7d0

.field private static final TOUCH_TOLERENCE:I = 0x4


# instance fields
.field private backGround:Landroid/graphics/Bitmap;

.field private btnAndDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;",
            ">;"
        }
    .end annotation
.end field

.field btnBottomlListener:Landroid/view/View$OnClickListener;

.field private btnCancel:Landroid/widget/Button;

.field private btnClearAll:Landroid/widget/Button;

.field btnCloseMenuListener:Landroid/view/View$OnClickListener;

.field private btnColors:[Landroid/widget/Button;

.field btnPenListener:Landroid/view/View$OnClickListener;

.field private btnPens:[Landroid/widget/Button;

.field private btnRedo:Landroid/widget/Button;

.field private btnSave:Landroid/widget/Button;

.field btnShapeOnClickListener:Landroid/view/View$OnClickListener;

.field private btnShapes:[Landroid/widget/Button;

.field private btnShare:Landroid/widget/Button;

.field private btnUndo:Landroid/widget/Button;

.field private closeMenu:Landroid/widget/Button;

.field colorButtonsListener:Landroid/view/View$OnClickListener;

.field private colorPicker:Lcom/android/mipop/paintpad/view/ColorPickerView;

.field colorPickerViewListener:Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;

.field private density:F

.field private filterHome:Landroid/content/IntentFilter;

.field private homeReceiver:Lcom/android/mipop/paintpad/activities/MainActivity$HomeReceiver;

.field private imageEraserWidth:Landroid/widget/ImageView;

.field private imageMenu:Landroid/widget/ImageView;

.field private isChanged:Z

.field private isRainbow:Z

.field private lastColor:Landroid/widget/Button;

.field private lastDrawingID:I

.field private lastPen:Landroid/widget/Button;

.field private lastShape:Landroid/widget/Button;

.field private layoutEraser:Landroid/widget/LinearLayout;

.field private layoutMenuContent:Landroid/widget/LinearLayout;

.field private layoutPen:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field mainListener:Landroid/view/View$OnTouchListener;

.field menuListener:Landroid/view/View$OnClickListener;

.field menuOnTouchListener:Landroid/view/View$OnTouchListener;

.field private menuTitle:Landroid/widget/TextView;

.field private menuVisable:Z

.field private paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

.field private penPreview:Lcom/android/mipop/paintpad/view/PenPreview;

.field seekBarEraserListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private seekBarEraserWidth:Landroid/widget/SeekBar;

.field seekBarPenListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private seekBarPenWidth:Landroid/widget/SeekBar;

.field private tempX:F

.field private tempY:F

.field private toast:Landroid/widget/Toast;

.field private toastTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    .line 78
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuVisable:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->isChanged:Z

    .line 96
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$HomeReceiver;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$HomeReceiver;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->homeReceiver:Lcom/android/mipop/paintpad/activities/MainActivity$HomeReceiver;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->filterHome:Landroid/content/IntentFilter;

    .line 381
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$1;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnCloseMenuListener:Landroid/view/View$OnClickListener;

    .line 389
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$2;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 397
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$3;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mainListener:Landroid/view/View$OnTouchListener;

    .line 422
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$4;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuListener:Landroid/view/View$OnClickListener;

    .line 471
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$5;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->colorButtonsListener:Landroid/view/View$OnClickListener;

    .line 503
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$6;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnBottomlListener:Landroid/view/View$OnClickListener;

    .line 566
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$7;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPenListener:Landroid/view/View$OnClickListener;

    .line 627
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$8;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarPenListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 653
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$9;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarEraserListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 677
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$10;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->colorPickerViewListener:Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;

    .line 693
    new-instance v0, Lcom/android/mipop/paintpad/activities/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mipop/paintpad/activities/MainActivity$11;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapeOnClickListener:Landroid/view/View$OnClickListener;

    .line 746
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->hideMenu()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mipop/paintpad/activities/MainActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->tempX:F

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mipop/paintpad/activities/MainActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->isRainbow:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/mipop/paintpad/activities/MainActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->tempX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PenPreview;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->penPreview:Lcom/android/mipop/paintpad/view/PenPreview;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->quit()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->switchRedoAndUndo()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mipop/paintpad/activities/MainActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastDrawingID:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mipop/paintpad/activities/MainActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastDrawingID:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->showPenMenu()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->showEraserMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mipop/paintpad/activities/MainActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->tempY:F

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mipop/paintpad/activities/MainActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/mipop/paintpad/activities/MainActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;
    .param p1, "x1"    # F

    .prologue
    .line 47
    iput p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->tempY:F

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->imageEraserWidth:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->isChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->menuSwitch()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mipop/paintpad/activities/MainActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;
    .param p1, "x1"    # Landroid/widget/Button;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mipop/paintpad/activities/MainActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/paintpad/activities/MainActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindViews()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 311
    const v0, 0x7f060133

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/view/ColorPickerView;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->colorPicker:Lcom/android/mipop/paintpad/view/ColorPickerView;

    .line 312
    const v0, 0x7f060121

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnClearAll:Landroid/widget/Button;

    .line 313
    const v0, 0x7f060111

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnCancel:Landroid/widget/Button;

    .line 314
    const v0, 0x7f060112

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnSave:Landroid/widget/Button;

    .line 315
    const v0, 0x7f060113

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShare:Landroid/widget/Button;

    .line 316
    const v0, 0x7f060115

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;

    .line 317
    const v0, 0x7f060114

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;

    .line 318
    const v0, 0x7f060119

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->closeMenu:Landroid/widget/Button;

    .line 320
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    const v0, 0x7f06011b

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 321
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    const v0, 0x7f06011c

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    .line 322
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    const v0, 0x7f06011d

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v5

    .line 323
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    const v0, 0x7f06011a

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v6

    .line 325
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    const v0, 0x7f06012b

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 326
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    const v0, 0x7f06012c

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    .line 327
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    const v0, 0x7f06012d

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v5

    .line 328
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    const v0, 0x7f06012e

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v6

    .line 329
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    const v0, 0x7f06012f

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v7

    .line 330
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    const/4 v2, 0x5

    const v0, 0x7f060130

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 331
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    const/4 v2, 0x6

    const v0, 0x7f060131

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 332
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    const/4 v2, 0x7

    const v0, 0x7f060132

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 334
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    const v0, 0x7f060125

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v3

    .line 335
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    const v0, 0x7f060126

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v4

    .line 336
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    const v0, 0x7f060127

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v5

    .line 337
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    const v0, 0x7f060128

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v6

    .line 338
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    const v0, 0x7f060129

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v7

    .line 339
    iget-object v1, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    const/4 v2, 0x5

    const v0, 0x7f06012a

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v2

    .line 341
    const v0, 0x7f060117

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutMenuContent:Landroid/widget/LinearLayout;

    .line 342
    const v0, 0x7f06011e

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutEraser:Landroid/widget/LinearLayout;

    .line 343
    const v0, 0x7f060122

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutPen:Landroid/widget/LinearLayout;

    .line 344
    const v0, 0x7f0600d2

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->imageMenu:Landroid/widget/ImageView;

    .line 345
    const v0, 0x7f060120

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->imageEraserWidth:Landroid/widget/ImageView;

    .line 346
    const v0, 0x7f060124

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarPenWidth:Landroid/widget/SeekBar;

    .line 347
    const v0, 0x7f06011f

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarEraserWidth:Landroid/widget/SeekBar;

    .line 348
    const v0, 0x7f060110

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/view/PaintPad;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    .line 349
    const v0, 0x7f060118

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuTitle:Landroid/widget/TextView;

    .line 350
    const v0, 0x7f060123

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/paintpad/view/PenPreview;

    iput-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->penPreview:Lcom/android/mipop/paintpad/view/PenPreview;

    .line 351
    return-void
.end method

.method private hideMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 444
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuVisable:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawable(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutMenuContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 447
    iput-boolean v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuVisable:Z

    .line 448
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->imageMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 450
    :cond_0
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/high16 v10, 0x40e00000    # 7.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 170
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 171
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 172
    iget v5, v1, Landroid/util/DisplayMetrics;->density:F

    iput v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    .line 173
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    .line 175
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getPen()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/mipop/paintpad/tools/Brush;->reset(Landroid/content/Context;)V

    .line 176
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->initBtnAndDatas()V

    .line 178
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->bindViews()V

    .line 179
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->setListeners()V

    .line 181
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->getSaveLastColorButton(Landroid/content/Context;)I

    move-result v0

    .line 182
    .local v0, "item":I
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lxg item = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    aget-object v5, v5, v0

    iput-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastColor:Landroid/widget/Button;

    .line 184
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->getSaveLastColorPicker(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 185
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    aget-object v6, v5, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v5, v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 192
    :goto_0
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->getSaveLastPen(Landroid/content/Context;)I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 193
    .local v2, "pen":I
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lxg pen = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz v2, :cond_0

    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    .line 195
    :cond_0
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v5, v5, v8

    iput-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;

    .line 196
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v6, v5, v8

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v5, v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 198
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->setNormal()V

    .line 212
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->getSaveLastShape(Landroid/content/Context;)I

    move-result v4

    .line 213
    .local v4, "shape":I
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lxg shape = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    aget-object v5, v5, v4

    iput-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastShape:Landroid/widget/Button;

    .line 215
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    aget-object v6, v5, v4

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v5, v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 218
    iput v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastDrawingID:I

    .line 219
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    iget v6, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastDrawingID:I

    invoke-virtual {v5, v6}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawing(I)V

    .line 221
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutMenuContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    mul-float/2addr v5, v9

    mul-float/2addr v5, v10

    invoke-static {v5}, Lcom/android/mipop/paintpad/tools/Brush;->setEraserWidtn(F)V

    .line 223
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->imageEraserWidth:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    mul-float/2addr v7, v9

    mul-float/2addr v7, v10

    float-to-int v7, v7

    iget v8, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    mul-float/2addr v8, v9

    mul-float/2addr v8, v10

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mipop/paintpad/tools/SaveLastSet;->getSaveLastWidth(Landroid/content/Context;)I

    move-result v3

    .line 227
    .local v3, "progress":I
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarPenWidth:Landroid/widget/SeekBar;

    invoke-virtual {v5, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 228
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->getBrush()Lcom/android/mipop/paintpad/tools/Brush;

    move-result-object v5

    int-to-float v6, v3

    iget v7, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->density:F

    mul-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/android/mipop/paintpad/tools/Brush;->setStrokeWidth(F)V

    .line 230
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->penPreview:Lcom/android/mipop/paintpad/view/PenPreview;

    invoke-virtual {v5}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    .line 231
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutEraser:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    const v5, 0x7f090555

    const/16 v6, 0x7d0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->toast:Landroid/widget/Toast;

    .line 233
    return-void

    .line 188
    .end local v2    # "pen":I
    .end local v3    # "progress":I
    .end local v4    # "shape":I
    :cond_2
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    aget-object v6, v5, v0

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v5, v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnUnselectedRes:I

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 199
    .restart local v2    # "pen":I
    :cond_3
    if-ne v2, v11, :cond_4

    .line 200
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;

    .line 201
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v6, v5, v2

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v5, v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 203
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->setBlur()V

    goto/16 :goto_1

    .line 204
    :cond_4
    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 205
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v5, v5, v2

    iput-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->lastPen:Landroid/widget/Button;

    .line 206
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v6, v5, v2

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/widget/Button;->getId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    iget v5, v5, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;->btnSelectedRes:I

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 208
    invoke-static {}, Lcom/android/mipop/paintpad/tools/Brush;->setEmboss()V

    .line 209
    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    const/4 v6, 0x0

    invoke-virtual {v5, v11, v6}, Lcom/android/mipop/paintpad/view/PaintPad;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private initBtnAndDatas()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06012b

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020741

    const v4, 0x7f020749

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06012c

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020743

    const v4, 0x7f02074b

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06012d

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f02073e

    const v4, 0x7f020746

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06012e

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f02073d

    const v4, 0x7f020745

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06012f

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f02073f

    const v4, 0x7f020747

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f060130

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020742

    const v4, 0x7f02074a

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f060131

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f02073c

    const v4, 0x7f020744

    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0701b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f060132

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020740

    const v4, 0x7f020748

    const/4 v5, -0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f060125

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f02075a

    const v4, 0x7f020760

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f060126

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020758

    const v4, 0x7f02075e

    const/4 v5, 0x1

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f060127

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f02075c

    const v4, 0x7f020762

    const/4 v5, 0x2

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f060128

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020757

    const v4, 0x7f02075d

    const/4 v5, 0x3

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f060129

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020759

    const v4, 0x7f02075f

    const/4 v5, 0x4

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06012a

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f02075b

    const v4, 0x7f020761

    const/4 v5, 0x5

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06011b

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020755

    const v4, 0x7f020714

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06011c

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020750

    const v4, 0x7f02070f

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06011d

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f020752

    const v4, 0x7f020711

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnAndDatas:Landroid/util/SparseArray;

    const v1, 0x7f06011a

    new-instance v2, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;

    const v3, 0x7f02074e

    const v4, 0x7f02070e

    invoke-direct {v2, p0, v3, v4, v7}, Lcom/android/mipop/paintpad/activities/MainActivity$ButtonDataSet;-><init>(Lcom/android/mipop/paintpad/activities/MainActivity;III)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method private menuSwitch()V
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuVisable:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->hideMenu()V

    .line 467
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->penPreview:Lcom/android/mipop/paintpad/view/PenPreview;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PenPreview;->reset()V

    .line 468
    return-void

    .line 465
    :cond_0
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->showMenu()V

    goto :goto_0
.end method

.method private quit()V
    .locals 4

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuVisable:Z

    if-eqz v0, :cond_0

    .line 731
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->hideMenu()V

    .line 744
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->isChanged:Z

    if-nez v0, :cond_1

    .line 734
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->finish()V

    goto :goto_0

    .line 735
    :cond_1
    iget-wide v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->toastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->toastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 737
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 738
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->finish()V

    goto :goto_0

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 741
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->toastTime:J

    goto :goto_0
.end method

.method private setListeners()V
    .locals 6

    .prologue
    .line 356
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->imageMenu:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnColors:[Landroid/widget/Button;

    .local v0, "arr$":[Landroid/widget/Button;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 358
    .local v1, "b":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->colorButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v1    # "b":Landroid/widget/Button;
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPens:[Landroid/widget/Button;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 361
    .restart local v1    # "b":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnPenListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 363
    .end local v1    # "b":Landroid/widget/Button;
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapes:[Landroid/widget/Button;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 364
    .restart local v1    # "b":Landroid/widget/Button;
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShapeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 366
    .end local v1    # "b":Landroid/widget/Button;
    :cond_2
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnSave:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnBottomlListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnCancel:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnBottomlListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 368
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnShare:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnBottomlListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 369
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnBottomlListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnBottomlListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnClearAll:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnBottomlListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarEraserWidth:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarEraserListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 373
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarPenWidth:Landroid/widget/SeekBar;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->seekBarPenListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 374
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mainListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Lcom/android/mipop/paintpad/view/PaintPad;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutMenuContent:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 376
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->colorPicker:Lcom/android/mipop/paintpad/view/ColorPickerView;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->colorPickerViewListener:Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;

    invoke-virtual {v4, v5}, Lcom/android/mipop/paintpad/view/ColorPickerView;->setOnColorChangedListener(Lcom/android/mipop/paintpad/view/ColorPickerView$onColorChangedListener;)V

    .line 377
    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->closeMenu:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnCloseMenuListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    return-void
.end method

.method private showEraserMenu()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutEraser:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutEraser:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 623
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutPen:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private showMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 453
    iget-boolean v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuVisable:Z

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    invoke-virtual {v0, v2}, Lcom/android/mipop/paintpad/view/PaintPad;->setDrawable(Z)V

    .line 455
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutMenuContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 456
    iput-boolean v2, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->menuVisable:Z

    .line 457
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->imageMenu:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    :cond_0
    return-void
.end method

.method private showPenMenu()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 613
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutEraser:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 617
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutEraser:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->layoutPen:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private switchRedoAndUndo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, -0x3d3d3e

    const v1, -0x828283

    .line 549
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->isUndoListEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 551
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->isRedoListEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 558
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 563
    :goto_1
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 554
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnUndo:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 561
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->btnRedo:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x64

    .line 115
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    iput-object p0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->mContext:Landroid/content/Context;

    .line 117
    iget-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->homeReceiver:Lcom/android/mipop/paintpad/activities/MainActivity$HomeReceiver;

    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->filterHome:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/mipop/paintpad/activities/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 124
    .local v2, "win":Landroid/view/Window;
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 126
    const v3, 0x7f030075

    invoke-virtual {p0, v3}, Lcom/android/mipop/paintpad/activities/MainActivity;->setContentView(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "CropScreenAndPaint"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    new-instance v1, Lcom/android/mipop/cropimage/TakePhoto;

    invoke-direct {v1, p0}, Lcom/android/mipop/cropimage/TakePhoto;-><init>(Landroid/content/Context;)V

    .line 130
    .local v1, "tp":Lcom/android/mipop/cropimage/TakePhoto;
    invoke-virtual {v1}, Lcom/android/mipop/cropimage/TakePhoto;->start()V

    .line 131
    sget-object v3, Lcom/android/mipop/cropimage/TakePhoto;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->backGround:Landroid/graphics/Bitmap;

    .line 132
    const-string v3, "csx"

    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->backGround:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v3, "csx"

    const-string v4, "boolean"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "tp":Lcom/android/mipop/cropimage/TakePhoto;
    :goto_0
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->init()V

    .line 164
    iget-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;

    iget-object v4, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->backGround:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/android/mipop/paintpad/view/PaintPad;->setBackGround(Landroid/graphics/Bitmap;)V

    .line 166
    return-void

    .line 157
    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/mipop/cropimage/CropImageEx;->bitmapForPaint:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->backGround:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->backGround:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity;->homeReceiver:Lcom/android/mipop/paintpad/activities/MainActivity$HomeReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 713
    sparse-switch p1, :sswitch_data_0

    .line 726
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 715
    :sswitch_0
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->menuSwitch()V

    goto :goto_0

    .line 718
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->quit()V

    goto :goto_0

    .line 721
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mipop/paintpad/activities/MainActivity;->quit()V

    goto :goto_0

    .line 713
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

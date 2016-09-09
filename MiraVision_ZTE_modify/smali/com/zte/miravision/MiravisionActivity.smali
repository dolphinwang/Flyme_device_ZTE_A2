.class public Lcom/zte/miravision/MiravisionActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "MiravisionActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final CONTRAST:Ljava/lang/String; = "mContrast"

.field private static final GAMMA:Ljava/lang/String; = "mGamma"

.field public static MODE:I = 0x0

.field private static final SATURATION:Ljava/lang/String; = "mSaturation"

.field private static final SHARP:Ljava/lang/String; = "mSharp"

.field private static final SYSTEM_MODE:Ljava/lang/String; = "systemMode"

.field private static final Tag:Ljava/lang/String; = "MiravisionActivity"


# instance fields
.field private LaunchColor:I

.field private defautLayout:Landroid/widget/LinearLayout;

.field private defualtContrast:I

.field private defualtGamma:I

.field private defualtSaturation:I

.field private defualtSharp:I

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private fanseLayout:Landroid/widget/RelativeLayout;

.field private heibaiLayout:Landroid/widget/RelativeLayout;

.field private imageView:Landroid/widget/ImageView;

.field private isInUserDefMode:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

.field private mContrastRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

.field private mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

.field private mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

.field private mGammaRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

.field private mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

.field private mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

.field private mSaturationRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

.field private mSharpnessRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

.field private mShortAnimationDuration:I

.field private mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

.field private mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

.field private mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

.field private onLayoutClickListener:Landroid/view/View$OnClickListener;

.field private onRadioBtnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private onSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private resetItem:Landroid/view/MenuItem;

.field private savedContrast:I

.field private savedGamma:I

.field private savedSaturation:I

.field private savedSharp:I

.field private standardLayout:Landroid/widget/RelativeLayout;

.field private userLayout:Landroid/widget/LinearLayout;

.field private xianyanLayout:Landroid/widget/RelativeLayout;

.field private zidingyiLayout:Landroid/widget/RelativeLayout;

.field private zidingyiSettingLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput v0, Lcom/zte/miravision/MiravisionActivity;->MODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/miravision/MiravisionActivity;->isInUserDefMode:Z

    .line 55
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->imageView:Landroid/widget/ImageView;

    .line 59
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 63
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 67
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 71
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 75
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 79
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 84
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 89
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 94
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 119
    const v0, -0xe3842e

    iput v0, p0, Lcom/zte/miravision/MiravisionActivity;->LaunchColor:I

    .line 123
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 127
    const/16 v0, 0x8

    iput v0, p0, Lcom/zte/miravision/MiravisionActivity;->defualtGamma:I

    .line 128
    iput v2, p0, Lcom/zte/miravision/MiravisionActivity;->defualtSharp:I

    .line 129
    iput v2, p0, Lcom/zte/miravision/MiravisionActivity;->defualtSaturation:I

    .line 130
    iput v2, p0, Lcom/zte/miravision/MiravisionActivity;->defualtContrast:I

    .line 132
    const/4 v0, 0x7

    iput v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedGamma:I

    .line 133
    iput v2, p0, Lcom/zte/miravision/MiravisionActivity;->savedSharp:I

    .line 134
    iput v2, p0, Lcom/zte/miravision/MiravisionActivity;->savedSaturation:I

    .line 135
    iput v2, p0, Lcom/zte/miravision/MiravisionActivity;->savedContrast:I

    .line 137
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->standardLayout:Landroid/widget/RelativeLayout;

    .line 138
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->xianyanLayout:Landroid/widget/RelativeLayout;

    .line 139
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->heibaiLayout:Landroid/widget/RelativeLayout;

    .line 140
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->fanseLayout:Landroid/widget/RelativeLayout;

    .line 141
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->zidingyiLayout:Landroid/widget/RelativeLayout;

    .line 142
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->userLayout:Landroid/widget/LinearLayout;

    .line 143
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->defautLayout:Landroid/widget/LinearLayout;

    .line 144
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->zidingyiSettingLayout:Landroid/widget/LinearLayout;

    .line 147
    iput-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 339
    new-instance v0, Lcom/zte/miravision/MiravisionActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/miravision/MiravisionActivity$1;-><init>(Lcom/zte/miravision/MiravisionActivity;)V

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->onLayoutClickListener:Landroid/view/View$OnClickListener;

    .line 377
    new-instance v0, Lcom/zte/miravision/MiravisionActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/miravision/MiravisionActivity$2;-><init>(Lcom/zte/miravision/MiravisionActivity;)V

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->onRadioBtnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 475
    new-instance v0, Lcom/zte/miravision/MiravisionActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/miravision/MiravisionActivity$3;-><init>(Lcom/zte/miravision/MiravisionActivity;)V

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->onSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    .locals 0

    .prologue
    .line 569
    invoke-direct {p0, p1}, Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    return-void
.end method

.method static synthetic access$10(Lcom/zte/miravision/MiravisionActivity;)I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedGamma:I

    return v0
.end method

.method static synthetic access$11(Lcom/zte/miravision/MiravisionActivity;)I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedContrast:I

    return v0
.end method

.method static synthetic access$12(Lcom/zte/miravision/MiravisionActivity;)I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedSaturation:I

    return v0
.end method

.method static synthetic access$13(Lcom/zte/miravision/MiravisionActivity;)I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedSharp:I

    return v0
.end method

.method static synthetic access$14(Lcom/zte/miravision/MiravisionActivity;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->setImageBitmap()V

    return-void
.end method

.method static synthetic access$15(Lcom/zte/miravision/MiravisionActivity;)Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    return-object v0
.end method

.method static synthetic access$16(Lcom/zte/miravision/MiravisionActivity;)Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    return-object v0
.end method

.method static synthetic access$17(Lcom/zte/miravision/MiravisionActivity;)Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    return-object v0
.end method

.method static synthetic access$18(Lcom/zte/miravision/MiravisionActivity;)Lcom/mediatek/miravision/setting/MiraVisionJni$Range;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    return-object v0
.end method

.method static synthetic access$19(Lcom/zte/miravision/MiravisionActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->defautLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    return-object v0
.end method

.method static synthetic access$20(Lcom/zte/miravision/MiravisionActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->userLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$21(Lcom/zte/miravision/MiravisionActivity;)I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->mShortAnimationDuration:I

    return v0
.end method

.method static synthetic access$22(Lcom/zte/miravision/MiravisionActivity;)V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->resetToDefault()V

    return-void
.end method

.method static synthetic access$3(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    return-object v0
.end method

.method static synthetic access$4(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    return-object v0
.end method

.method static synthetic access$5(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    return-object v0
.end method

.method static synthetic access$6(Lcom/zte/miravision/MiravisionActivity;)V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->enterUserDefFade()V

    return-void
.end method

.method static synthetic access$7(Lcom/zte/miravision/MiravisionActivity;Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/zte/miravision/MiravisionActivity;->isInUserDefMode:Z

    return-void
.end method

.method static synthetic access$8(Lcom/zte/miravision/MiravisionActivity;)V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->setPicModeStandard()V

    return-void
.end method

.method static synthetic access$9(Lcom/zte/miravision/MiravisionActivity;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private enterUserDefFade()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 672
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->resetItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->resetItem:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->defautLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/zte/miravision/MiravisionActivity;->mShortAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 676
    new-instance v1, Lcom/zte/miravision/MiravisionActivity$4;

    invoke-direct {v1, p0}, Lcom/zte/miravision/MiravisionActivity$4;-><init>(Lcom/zte/miravision/MiravisionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 686
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->userLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 687
    return-void
.end method

.method private initData()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 203
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getGammaIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    .line 204
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    if-eqz v5, :cond_0

    .line 205
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget-object v6, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v6, v6, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    iget-object v7, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v7, v7, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->setMax(I)V

    .line 207
    :cond_0
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSharpnessIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    .line 208
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    if-eqz v5, :cond_1

    .line 209
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget-object v6, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v6, v6, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    iget-object v7, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v7, v7, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->setMax(I)V

    .line 211
    :cond_1
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSaturationIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    .line 212
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    if-eqz v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget-object v6, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v6, v6, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    iget-object v7, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v7, v7, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->setMax(I)V

    .line 216
    :cond_2
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getContrastIndexRange()Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    .line 217
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    if-eqz v5, :cond_3

    .line 218
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget-object v6, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v6, v6, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->max:I

    iget-object v7, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v7, v7, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->setMax(I)V

    .line 222
    :cond_3
    const-string v5, "MiraVision"

    sget v6, Lcom/zte/miravision/MiravisionActivity;->MODE:I

    invoke-virtual {p0, v5, v6}, Lcom/zte/miravision/MiravisionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 223
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 224
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "mGamma"

    .line 225
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getGammaIndex()I

    move-result v7

    .line 224
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/zte/miravision/MiravisionActivity;->savedGamma:I

    .line 226
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "mSharp"

    .line 227
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSharpnessIndex()I

    move-result v7

    .line 226
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/zte/miravision/MiravisionActivity;->savedSharp:I

    .line 228
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "mSaturation"

    .line 229
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getSaturationIndex()I

    move-result v7

    .line 228
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/zte/miravision/MiravisionActivity;->savedSaturation:I

    .line 230
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "mContrast"

    .line 231
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->getContrastIndex()I

    move-result v7

    .line 230
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/zte/miravision/MiravisionActivity;->savedContrast:I

    .line 233
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget v6, p0, Lcom/zte/miravision/MiravisionActivity;->savedGamma:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 234
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget v6, p0, Lcom/zte/miravision/MiravisionActivity;->savedSharp:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 235
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget v6, p0, Lcom/zte/miravision/MiravisionActivity;->savedSaturation:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 236
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget v6, p0, Lcom/zte/miravision/MiravisionActivity;->savedContrast:I

    invoke-virtual {v5, v6}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 238
    const/4 v2, 0x1

    .line 242
    .local v2, "isInMode":Z
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    if-eqz v5, :cond_4

    .line 243
    const/4 v1, 0x0

    .line 245
    .local v1, "isChecked":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 246
    const-string v6, "accessibility_display_daltonizer_enabled"

    .line 245
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_7

    move v1, v3

    .line 252
    :goto_0
    if-eqz v1, :cond_4

    .line 253
    const-string v5, "MiravisionActivity"

    const-string v6, "heibai init isChecked"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v2, 0x0

    .line 255
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-direct {p0, v5}, Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    .line 262
    .end local v1    # "isChecked":Z
    :cond_4
    iget-object v5, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    if-eqz v5, :cond_5

    .line 263
    const/4 v1, 0x0

    .line 266
    .restart local v1    # "isChecked":Z
    :try_start_1
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 267
    const-string v6, "accessibility_display_inversion_enabled"

    .line 266
    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 265
    if-ne v5, v3, :cond_8

    move v1, v3

    .line 273
    :goto_1
    if-eqz v1, :cond_5

    .line 274
    const-string v3, "MiravisionActivity"

    const-string v4, "heibai init isChecked"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v2, 0x0

    .line 276
    iget-object v3, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-direct {p0, v3}, Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    .line 283
    .end local v1    # "isChecked":Z
    :cond_5
    if-eqz v2, :cond_6

    .line 284
    const-string v3, "MiravisionActivity"

    const-string v4, "isInMode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-static {}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeGetPictureMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 308
    :cond_6
    :goto_2
    return-void

    .restart local v1    # "isChecked":Z
    :cond_7
    move v1, v4

    .line 247
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    move v1, v4

    .line 268
    goto :goto_1

    .line 269
    :catch_1
    move-exception v0

    .line 271
    .restart local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 288
    .end local v0    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v1    # "isChecked":Z
    :pswitch_0
    iget-object v3, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-direct {p0, v3}, Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_2

    .line 294
    :pswitch_1
    iget-object v3, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-direct {p0, v3}, Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_2

    .line 300
    :pswitch_2
    iget-object v3, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-direct {p0, v3}, Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_2

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 312
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->imageView:Landroid/widget/ImageView;

    .line 314
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RadioButtonZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 315
    const v0, 0x7f060064

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RadioButtonZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 316
    const v0, 0x7f060066

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RadioButtonZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 317
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RadioButtonZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 318
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/RadioButtonZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    .line 320
    const v0, 0x7f060075

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SeekBarZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 321
    const v0, 0x7f06007a

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SeekBarZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 322
    const v0, 0x7f060070

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SeekBarZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 323
    const v0, 0x7f06007f

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/widget/SeekBarZTE;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    .line 325
    const v0, 0x7f06006c

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->userLayout:Landroid/widget/LinearLayout;

    .line 326
    const v0, 0x7f060060

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->defautLayout:Landroid/widget/LinearLayout;

    .line 328
    const v0, 0x7f060061

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->standardLayout:Landroid/widget/RelativeLayout;

    .line 329
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->fanseLayout:Landroid/widget/RelativeLayout;

    .line 330
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->heibaiLayout:Landroid/widget/RelativeLayout;

    .line 331
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->xianyanLayout:Landroid/widget/RelativeLayout;

    .line 332
    const v0, 0x7f06006a

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->zidingyiLayout:Landroid/widget/RelativeLayout;

    .line 333
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->zidingyiSettingLayout:Landroid/widget/LinearLayout;

    .line 334
    return-void
.end method

.method private quitUserDefFade()V
    .locals 4

    .prologue
    .line 694
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->resetItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->resetItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->userLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/zte/miravision/MiravisionActivity;->mShortAnimationDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 698
    new-instance v1, Lcom/zte/miravision/MiravisionActivity$5;

    invoke-direct {v1, p0}, Lcom/zte/miravision/MiravisionActivity$5;-><init>(Lcom/zte/miravision/MiravisionActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 710
    return-void
.end method

.method private resetToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 774
    const-string v0, "MiravisionActivity"

    const-string v1, "resetToDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-static {v2}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 776
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-direct {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    .line 777
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "systemMode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 778
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 779
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->defualtGamma:I

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setGammaIndex(I)V

    .line 780
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->defualtContrast:I

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setContrastIndex(I)V

    .line 781
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->defualtSaturation:I

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setSaturationIndex(I)V

    .line 782
    iget v0, p0, Lcom/zte/miravision/MiravisionActivity;->defualtSharp:I

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setSharpnessIndex(I)V

    .line 783
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget v1, p0, Lcom/zte/miravision/MiravisionActivity;->defualtGamma:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 784
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget v1, p0, Lcom/zte/miravision/MiravisionActivity;->defualtContrast:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 785
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget v1, p0, Lcom/zte/miravision/MiravisionActivity;->defualtSaturation:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 786
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget v1, p0, Lcom/zte/miravision/MiravisionActivity;->defualtSharp:I

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setProgress(I)V

    .line 787
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->setImageBitmap()V

    .line 788
    return-void
.end method

.method private saveToPreference()V
    .locals 3

    .prologue
    .line 610
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v1, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedGamma:I

    .line 611
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v1, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedContrast:I

    .line 612
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v1, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedSharp:I

    .line 613
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/SeekBarZTE;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationRange:Lcom/mediatek/miravision/setting/MiraVisionJni$Range;

    iget v1, v1, Lcom/mediatek/miravision/setting/MiraVisionJni$Range;->min:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/zte/miravision/MiravisionActivity;->savedSaturation:I

    .line 614
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mGamma"

    iget v2, p0, Lcom/zte/miravision/MiravisionActivity;->savedGamma:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 615
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mSharp"

    iget v2, p0, Lcom/zte/miravision/MiravisionActivity;->savedSharp:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 616
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mSaturation"

    iget v2, p0, Lcom/zte/miravision/MiravisionActivity;->savedSaturation:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 617
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "mContrast"

    iget v2, p0, Lcom/zte/miravision/MiravisionActivity;->savedContrast:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 618
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 619
    return-void
.end method

.method private setImageBitmap()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->imageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ed

    invoke-direct {p0, v0, v1}, Lcom/zte/miravision/MiravisionActivity;->sharpnessDecode(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 197
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    :cond_0
    return-void
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->standardLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 545
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->fanseLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->heibaiLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 547
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->zidingyiLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->xianyanLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->zidingyiSettingLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onRadioBtnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 552
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onRadioBtnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 553
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onRadioBtnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 554
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onRadioBtnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 555
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onRadioBtnCheckedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 557
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mGammaBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 558
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mContrastBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 559
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSaturationBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 560
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mSharpnessBar:Lcom/zte/mifavor/widget/SeekBarZTE;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity;->onSeekBarChangedListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/SeekBarZTE;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 562
    return-void
.end method

.method private setPicModeStandard()V
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->nativeSetPictureMode(I)Z

    .line 469
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/mediatek/miravision/setting/MiraVisionJni;->setGammaIndex(I)V

    .line 470
    return-void
.end method

.method private sharpnessDecode(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 713
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 717
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 718
    const-string v4, "inPostProc"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 719
    .local v1, "inPostProc":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_0

    .line 720
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 722
    :cond_0
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 726
    .end local v1    # "inPostProc":Ljava/lang/reflect/Field;
    :goto_0
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 728
    :try_start_1
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/miravision/MiravisionActivity;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 733
    :goto_1
    iget-object v3, p0, Lcom/zte/miravision/MiravisionActivity;->mBitmap:Landroid/graphics/Bitmap;

    return-object v3

    .line 729
    :catch_0
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 723
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    .locals 5
    .param p1, "radiobtn"    # Lcom/zte/mifavor/widget/RadioButtonZTE;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 570
    const-string v0, "MiravisionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":isChecked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-nez p1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    if-ne p1, v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 575
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 576
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 577
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 578
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto :goto_0

    .line 579
    :cond_2
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    if-ne p1, v0, :cond_3

    .line 580
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 581
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 582
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 583
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 584
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto :goto_0

    .line 585
    :cond_3
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    if-ne p1, v0, :cond_4

    .line 586
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 587
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 588
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 589
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 590
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto :goto_0

    .line 591
    :cond_4
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    if-ne p1, v0, :cond_5

    .line 592
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 593
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 594
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 595
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 596
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto :goto_0

    .line 597
    :cond_5
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    if-ne p1, v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 599
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 600
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 601
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v3}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    .line 602
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;

    invoke-virtual {v0, v4}, Lcom/zte/mifavor/widget/RadioButtonZTE;->setChecked(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/zte/miravision/MiravisionActivity;->isInUserDefMode:Z

    if-eqz v0, :cond_0

    .line 636
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->saveToPreference()V

    .line 637
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->quitUserDefFade()V

    .line 640
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/miravision/MiravisionActivity;->isInUserDefMode:Z

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 155
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v1, 0x7f030046

    invoke-virtual {p0, v1}, Lcom/zte/miravision/MiravisionActivity;->setContentView(I)V

    .line 158
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 159
    .local v0, "bar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 160
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 162
    const-string v2, "color_sh"

    iget v3, p0, Lcom/zte/miravision/MiravisionActivity;->LaunchColor:I

    .line 161
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/miravision/MiravisionActivity;->LaunchColor:I

    .line 163
    iget v1, p0, Lcom/zte/miravision/MiravisionActivity;->LaunchColor:I

    invoke-virtual {p0, v1}, Lcom/zte/miravision/MiravisionActivity;->setIndicatorColor(I)V

    .line 167
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->initViews()V

    .line 169
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->setListeners()V

    .line 172
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 173
    const/high16 v2, 0x10e0000

    .line 172
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/zte/miravision/MiravisionActivity;->mShortAnimationDuration:I

    .line 175
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 739
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 740
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 741
    const v0, 0x7f060082

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->resetItem:Landroid/view/MenuItem;

    .line 742
    iget-boolean v0, p0, Lcom/zte/miravision/MiravisionActivity;->isInUserDefMode:Z

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->resetItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 747
    :goto_0
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->resetItem:Landroid/view/MenuItem;

    new-instance v1, Lcom/zte/miravision/MiravisionActivity$6;

    invoke-direct {v1, p0}, Lcom/zte/miravision/MiravisionActivity$6;-><init>(Lcom/zte/miravision/MiravisionActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 755
    return v2

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->resetItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 659
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 660
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 662
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/miravision/MiravisionActivity;->mBitmap:Landroid/graphics/Bitmap;

    .line 664
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 665
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 648
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 653
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 650
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->onBackPressed()V

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 624
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onPause()V

    .line 625
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->saveToPreference()V

    .line 626
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 180
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/zte/miravision/MiravisionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 182
    const-string v2, "color_sh"

    iget v3, p0, Lcom/zte/miravision/MiravisionActivity;->LaunchColor:I

    .line 181
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 183
    .local v0, "currentColor":I
    iget v1, p0, Lcom/zte/miravision/MiravisionActivity;->LaunchColor:I

    if-eq v0, v1, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/zte/miravision/MiravisionActivity;->setIndicatorColor(I)V

    .line 187
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/miravision/MiravisionActivity;->setRequestedOrientation(I)V

    .line 189
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->initData()V

    .line 191
    invoke-direct {p0}, Lcom/zte/miravision/MiravisionActivity;->setImageBitmap()V

    .line 192
    return-void
.end method

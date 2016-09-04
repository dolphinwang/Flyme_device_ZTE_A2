.class public Lcom/zte/mifavor/widget/ProgressBarZTE;
.super Landroid/widget/ProgressBar;
.source "ProgressBarZTE.java"


# static fields
.field public static final STATE_ENABLE:[I

.field public static final STATE_NOMARL:[I

.field public static final STATE_PRESSED:[I

.field public static final STATE_SELECTED:[I


# instance fields
.field mBgDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field mEN_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mNORMAL_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mPRESS_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

.field mSELECTED_Drawable:Landroid/graphics/drawable/BitmapDrawable;

.field mSecondDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field primaryDrawable:Landroid/graphics/drawable/ScaleDrawable;

.field secondDrawable:Landroid/graphics/drawable/ScaleDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/ProgressBarZTE;->STATE_ENABLE:[I

    .line 59
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/zte/mifavor/widget/ProgressBarZTE;->STATE_PRESSED:[I

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zte/mifavor/widget/ProgressBarZTE;->STATE_SELECTED:[I

    .line 66
    new-array v0, v2, [I

    sput-object v0, Lcom/zte/mifavor/widget/ProgressBarZTE;->STATE_NOMARL:[I

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x10100a1
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/ProgressBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/widget/ProgressBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/zte/mifavor/widget/ProgressBarZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_pb:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 81
    .local v0, "color":I
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/ProgressBarZTE;->SetColor(I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "styleRes"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 173
    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 12
    .param p1, "color"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 102
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    .local v4, "r":Landroid/content/res/Resources;
    sget v5, Lcom/zte/extres/R$drawable;->scrubber_track_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 104
    .local v0, "bagtem":Landroid/graphics/drawable/Drawable;
    sget v5, Lcom/zte/extres/R$drawable;->scrubber_primary_zte_light:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 106
    .local v3, "prgtem":Landroid/graphics/drawable/Drawable;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 107
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 108
    new-instance v5, Landroid/graphics/drawable/ScaleDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v5, v3, v8, v6, v7}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 109
    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v9

    aput-object v0, v1, v10

    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    aput-object v5, v1, v11

    .line 113
    .local v1, "draws":[Landroid/graphics/drawable/Drawable;
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 117
    .local v2, "ids":[I
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 118
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v6, 0x1020000

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 119
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000f

    invoke-virtual {v5, v10, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 120
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000d

    invoke-virtual {v5, v11, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 121
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ProgressBarZTE;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-void

    .line 113
    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data
.end method

.method public SetColor(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V
    .locals 12
    .param p1, "color"    # I
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "forground"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 143
    invoke-static {p3, p1}, Lcom/zte/mifavor/widget/JavaChanger;->setColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    .local v0, "btDrawable":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v3, v0, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    .line 146
    .local v3, "ninepatch2":Landroid/graphics/NinePatch;
    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v4, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/NinePatch;)V

    .line 148
    .local v4, "testNinePatch":Landroid/graphics/drawable/NinePatchDrawable;
    new-instance v5, Landroid/graphics/drawable/ScaleDrawable;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v5, v4, v8, v6, v7}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    .line 152
    new-array v1, v8, [Landroid/graphics/drawable/Drawable;

    aput-object p2, v1, v9

    aput-object p2, v1, v10

    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->secondDrawable:Landroid/graphics/drawable/ScaleDrawable;

    aput-object v5, v1, v11

    .line 156
    .local v1, "draws":[Landroid/graphics/drawable/Drawable;
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 160
    .local v2, "ids":[I
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 161
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/high16 v6, 0x1020000

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 162
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000f

    invoke-virtual {v5, v10, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 163
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v6, 0x102000d

    invoke-virtual {v5, v11, v6}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 164
    iget-object v5, p0, Lcom/zte/mifavor/widget/ProgressBarZTE;->mProgressDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v5}, Lcom/zte/mifavor/widget/ProgressBarZTE;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-void

    .line 156
    :array_0
    .array-data 4
        0x1020000
        0x102000f
        0x102000d
    .end array-data
.end method

.method public getLoacalBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 89
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 94
    const/4 v2, 0x0

    goto :goto_0
.end method

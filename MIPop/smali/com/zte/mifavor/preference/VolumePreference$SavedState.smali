.class Lcom/zte/mifavor/preference/VolumePreference$SavedState;
.super Lcom/zte/mifavor/preference/Preference$BaseSavedState;
.source "VolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/preference/VolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zte/mifavor/preference/VolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 238
    new-instance v0, Lcom/zte/mifavor/preference/VolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/zte/mifavor/preference/VolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 215
    new-instance v0, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    invoke-direct {v0}, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->mVolumeStore:Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->mVolumeStore:Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->volume:I

    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->mVolumeStore:Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->originalVolume:I

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/zte/mifavor/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 215
    new-instance v0, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    invoke-direct {v0}, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->mVolumeStore:Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    .line 236
    return-void
.end method


# virtual methods
.method getVolumeStore()Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->mVolumeStore:Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Lcom/zte/mifavor/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->mVolumeStore:Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    iget v0, v0, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->volume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Lcom/zte/mifavor/preference/VolumePreference$SavedState;->mVolumeStore:Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;

    iget v0, v0, Lcom/zte/mifavor/preference/VolumePreference$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    return-void
.end method

.class public Lcom/android/mipop/cropimage/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mipop/cropimage/ImageManager$1;,
        Lcom/android/mipop/cropimage/ImageManager$DataLocation;,
        Lcom/android/mipop/cropimage/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 38
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 40
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/android/mipop/cropimage/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mipop/cropimage/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mipop/cropimage/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "directory"    # Ljava/lang/String;
    .param p6, "filename"    # Ljava/lang/String;
    .param p7, "source"    # Landroid/graphics/Bitmap;
    .param p8, "jpegData"    # [B
    .param p9, "degree"    # [I

    .prologue
    .line 185
    const/4 v6, 0x0

    .line 186
    .local v6, "outputStream":Ljava/io/OutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "filePath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 190
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 191
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v4, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .local v7, "outputStream":Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 194
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x4b

    move-object/from16 v0, p7

    invoke-virtual {v0, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 195
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p9, v9
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    :goto_0
    invoke-static {v7}, Lcom/android/mipop/cropimage/Until;->closeSilently(Ljava/io/Closeable;)V

    .line 210
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 211
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v9, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v9, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v9, "orientation"

    const/4 v10, 0x0

    aget v10, p9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz p4, :cond_1

    .line 223
    const-string v9, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 224
    const-string v9, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 227
    :cond_1
    sget-object v9, Lcom/android/mipop/cropimage/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    move-object v6, v7

    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .end local v8    # "values":Landroid/content/ContentValues;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    return-object v9

    .line 197
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :cond_2
    :try_start_2
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/io/OutputStream;->write([B)V

    .line 198
    const/4 v9, 0x0

    invoke-static {v5}, Lcom/android/mipop/cropimage/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v10

    aput v10, p9, v9
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 201
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .local v3, "ex":Ljava/io/FileNotFoundException;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 202
    const/4 v9, 0x0

    .line 207
    invoke-static {v6}, Lcom/android/mipop/cropimage/Until;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 203
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 204
    .local v3, "ex":Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    const/4 v9, 0x0

    .line 207
    invoke-static {v6}, Lcom/android/mipop/cropimage/Until;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v3    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v6}, Lcom/android/mipop/cropimage/Until;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "dir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 203
    .end local v6    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "outputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 200
    .end local v2    # "dir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method private static checkFsWritable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, "directoryName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 434
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 450
    :cond_0
    :goto_0
    return v4

    .line 438
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .local v3, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 442
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 444
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    const/4 v4, 0x1

    goto :goto_0

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, "ex":Ljava/io/IOException;
    goto :goto_0
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "nnnAAAAA":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-string v1, "ImageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create NNNAAAAA file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyImageListParam()Lcom/android/mipop/cropimage/ImageManager$ImageListParam;
    .locals 2

    .prologue
    .line 405
    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;-><init>()V

    .line 406
    .local v0, "param":Lcom/android/mipop/cropimage/ImageManager$ImageListParam;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 407
    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 234
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 238
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 239
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 240
    .local v4, "orientation":I
    if-eq v4, v7, :cond_0

    .line 242
    packed-switch v4, :pswitch_data_0

    .line 256
    .end local v4    # "orientation":I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, "ex":Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 244
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 245
    goto :goto_1

    .line 247
    :pswitch_2
    const/16 v0, 0xb4

    .line 248
    goto :goto_1

    .line 250
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_1

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/android/mipop/cropimage/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/mipop/cropimage/ImageManager$ImageListParam;
    .locals 1
    .param p0, "location"    # Lcom/android/mipop/cropimage/ImageManager$DataLocation;
    .param p1, "inclusion"    # I
    .param p2, "sort"    # I
    .param p3, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 390
    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;-><init>()V

    .line 391
    .local v0, "param":Lcom/android/mipop/cropimage/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;->mLocation:Lcom/android/mipop/cropimage/ImageManager$DataLocation;

    .line 392
    iput p1, v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;->mInclusion:I

    .line 393
    iput p2, v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;->mSort:I

    .line 394
    iput-object p3, v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 395
    return-object v0
.end method

.method public static getSingleImageListParam(Landroid/net/Uri;)Lcom/android/mipop/cropimage/ImageManager$ImageListParam;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 399
    new-instance v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;-><init>()V

    .line 400
    .local v0, "param":Lcom/android/mipop/cropimage/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/android/mipop/cropimage/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 401
    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mipop/cropimage/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 3
    .param p0, "requireWriteAccess"    # Z

    .prologue
    const/4 v1, 0x1

    .line 459
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "state":Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    if-eqz p0, :cond_0

    .line 463
    invoke-static {}, Lcom/android/mipop/cropimage/ImageManager;->checkFsWritable()Z

    move-result v1

    .line 471
    :cond_0
    :goto_0
    return v1

    .line 468
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 471
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImage(Lcom/android/mipop/cropimage/IImage;)Z
    .locals 1
    .param p0, "image"    # Lcom/android/mipop/cropimage/IImage;

    .prologue
    .line 161
    invoke-interface {p0}, Lcom/android/mipop/cropimage/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mipop/cropimage/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 488
    const/4 v7, 0x0

    .line 489
    .local v7, "result":Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/android/mipop/cropimage/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 492
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 493
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 494
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 495
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 497
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 500
    :cond_1
    return v7
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uriString"    # Ljava/lang/String;

    .prologue
    .line 347
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideo(Lcom/android/mipop/cropimage/IImage;)Z
    .locals 1
    .param p0, "image"    # Lcom/android/mipop/cropimage/IImage;

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 477
    if-nez p0, :cond_0

    .line 482
    :goto_0
    return-object v1

    .line 480
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

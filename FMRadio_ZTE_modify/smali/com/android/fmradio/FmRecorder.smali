.class public Lcom/android/fmradio/FmRecorder;
.super Ljava/lang/Object;
.source "FmRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;
    }
.end annotation


# static fields
.field public static final ERROR_RECORDER_INTERNAL:I = 0x3

.field public static final ERROR_SDCARD_INSUFFICIENT_SPACE:I = 0x1

.field public static final ERROR_SDCARD_NOT_PRESENT:I = 0x0

.field public static final ERROR_SDCARD_WRITE_FAILED:I = 0x2

.field public static final FM_RECORD_FOLDER:Ljava/lang/String; = "Records"

.field public static final RECORDING_FILE_EXTENSION:Ljava/lang/String; = ".m4a"

.field public static final RECORDING_FILE_PREFIX:Ljava/lang/String; = "FM"

.field private static final RECORDING_FILE_SOURCE:Ljava/lang/String; = "FM records"

.field private static final RECORDING_FILE_TYPE:Ljava/lang/String; = "audio/mp4"

.field public static final STATE_IDLE:I = 0x5

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_PLAYBACK:I = 0x7

.field public static final STATE_RECORDING:I = 0x6

.field private static final TAG:Ljava/lang/String; = "FmRecorder"


# instance fields
.field public mInternalState:I

.field private mIsRecordingFileSaved:Z

.field private mRecordFile:Ljava/io/File;

.field private mRecordStartTime:J

.field private mRecordTime:J

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    .line 74
    iput-wide v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordTime:J

    .line 76
    iput-wide v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordStartTime:J

    .line 78
    iput-object v1, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/fmradio/FmRecorder;->mIsRecordingFileSaved:Z

    .line 82
    iput-object v1, p0, Lcom/android/fmradio/FmRecorder;->mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    .line 84
    iput-object v1, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 43
    return-void
.end method

.method private addRecordingToDatabase(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 400
    .local v0, "curTime":J
    iget-object v11, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 401
    .local v4, "modDate":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 405
    .local v3, "date":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/android/fmradio/FmRecorder;->getRecordFileName()Ljava/lang/String;

    move-result-object v10

    .line 414
    .local v10, "title":Ljava/lang/String;
    const/16 v9, 0x8

    .line 415
    .local v9, "size":I
    new-instance v2, Landroid/content/ContentValues;

    const/16 v11, 0x8

    invoke-direct {v2, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 416
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v11, "is_music"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 417
    const-string v11, "title"

    invoke-virtual {v2, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v11, "_data"

    iget-object v12, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/16 v6, 0x3e8

    .line 420
    .local v6, "oneSecond":I
    const-string v11, "date_added"

    const-wide/16 v12, 0x3e8

    div-long v12, v0, v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v11, "date_modified"

    const-wide/16 v12, 0x3e8

    div-long v12, v4, v12

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    const-string v11, "mime_type"

    const-string v12, "audio/mp4"

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v11, "album"

    const-string v12, "FM records"

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v11, "duration"

    iget-wide v12, p0, Lcom/android/fmradio/FmRecorder;->mRecordTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    invoke-direct {p0, p1, v2}, Lcom/android/fmradio/FmRecorder;->addToAudioTable(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v8

    .line 428
    .local v8, "recordingId":I
    if-gez v8, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    invoke-static {p1}, Lcom/android/fmradio/FmRecorder;->getPlaylistId(Landroid/content/Context;)I

    move-result v7

    .line 433
    .local v7, "playlistId":I
    if-gez v7, :cond_2

    .line 435
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRecorder;->createPlaylist(Landroid/content/Context;)I

    move-result v7

    .line 437
    :cond_2
    if-ltz v7, :cond_0

    .line 442
    invoke-direct {p0, p1, v7, v8}, Lcom/android/fmradio/FmRecorder;->addToPlaylist(Landroid/content/Context;II)V

    .line 444
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    .line 445
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 444
    invoke-static {p1, v11, v12, v13}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method

.method private addToAudioTable(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 491
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 492
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, -0x1

    .line 494
    .local v7, "id":I
    const/4 v6, 0x0

    .line 498
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 499
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 500
    const-string v3, "_data=?"

    .line 501
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    .line 502
    const/4 v5, 0x0

    .line 497
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 503
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 507
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, v7

    .line 506
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 509
    const/4 v2, 0x0

    .line 510
    const/4 v3, 0x0

    .line 506
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 524
    :cond_1
    return v7

    .line 513
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 514
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 513
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 515
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 516
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 519
    goto :goto_0

    .end local v8    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v1

    .line 520
    if-eqz v6, :cond_3

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_3
    throw v1
.end method

.method private addToPlaylist(Landroid/content/Context;II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playlistId"    # I
    .param p3, "recordingId"    # I

    .prologue
    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 529
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "external"

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    .line 530
    .local v9, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 531
    .local v8, "order":I
    const/4 v6, 0x0

    .line 534
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 535
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    .line 536
    const-string v3, "_data=?"

    .line 537
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    .line 538
    const/4 v5, 0x0

    .line 533
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 539
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 544
    :cond_0
    if-eqz v6, :cond_1

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 548
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v7, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 549
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v1, "audio_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string v1, "play_order"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v9, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 552
    return-void

    .line 543
    .end local v7    # "cv":Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    .line 544
    if-eqz v6, :cond_2

    .line 545
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 547
    :cond_2
    throw v1
.end method

.method private convertNameByNum(I)Ljava/lang/String;
    .locals 3
    .param p1, "namenum"    # I

    .prologue
    .line 603
    const-string v0, "FM_"

    .line 604
    .local v0, "filename":Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 606
    :cond_0
    const/16 v1, 0x64

    if-ge p1, v1, :cond_1

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    goto :goto_0

    .line 609
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createPlaylist(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 478
    const/4 v2, 0x1

    .line 479
    .local v2, "size":I
    new-instance v0, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 480
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "FM records"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 482
    const-string v4, "external"

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 481
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 483
    .local v1, "newPlaylistUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 484
    const-string v3, "FmRecorder"

    const-string v4, "createPlaylist, create playlist failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v3, -0x1

    .line 487
    :goto_0
    return v3

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method private createRecordFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "extension"    # Ljava/lang/String;

    .prologue
    .line 575
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v3, "mFileDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 577
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 579
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "allFileNames":[Ljava/lang/String;
    if-nez v0, :cond_1

    .line 581
    const-string v6, "FmRecorder"

    const-string v7, "allFileNames = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_1
    const/4 v5, 0x1

    .line 584
    .local v5, "num":I
    const-string v2, ""

    .line 585
    .local v2, "filenamebynum":Ljava/lang/String;
    const/4 v1, 0x1

    .line 586
    .local v1, "exist":Z
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 587
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/fmradio/FmRecorder;->convertNameByNum(I)Ljava/lang/String;

    move-result-object v2

    .line 588
    const/4 v1, 0x0

    .line 589
    array-length v7, v0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v4, v0, v6

    .line 590
    .local v4, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 591
    add-int/lit8 v5, v5, 0x1

    .line 592
    const/4 v1, 0x1

    .line 593
    goto :goto_0

    .line 595
    :cond_4
    const/4 v1, 0x0

    .line 589
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public static getPlaylistId(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 454
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 455
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 456
    new-array v2, v4, [Ljava/lang/String;

    .line 457
    const-string v3, "_id"

    aput-object v3, v2, v9

    .line 459
    const-string v3, "_data=?"

    .line 460
    new-array v4, v4, [Ljava/lang/String;

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/fmradio/FmUtils;->getPlaylistPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "FM records"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 463
    const/4 v5, 0x0

    .line 454
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 464
    .local v6, "playlistCursor":Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 465
    .local v7, "playlistId":I
    if-eqz v6, :cond_1

    .line 467
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 471
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_1
    return v7

    .line 470
    :catchall_0
    move-exception v0

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 472
    throw v0
.end method

.method private setError(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;->onRecorderError(I)V

    .line 374
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 382
    const-string v0, "FmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setState, old state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new_state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget v0, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    if-eq v0, p1, :cond_1

    .line 384
    iput p1, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    .line 385
    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    invoke-interface {v0, p1}, Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;->onRecorderStateChanged(I)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const-string v0, "FmRecorder"

    const-string v1, "setState, avoid notify state change"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopRecorder()V
    .locals 5

    .prologue
    .line 555
    monitor-enter p0

    .line 556
    :try_start_0
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 558
    :try_start_1
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 566
    :try_start_2
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 567
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRecorder;->setState(I)V

    .line 568
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 555
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    return-void

    .line 559
    :catch_0
    move-exception v1

    .line 560
    .local v1, "ex":Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v2, "FmRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopRecorder, IllegalStateException ocurr "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRecorder;->setError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 566
    :try_start_4
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 567
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRecorder;->setState(I)V

    .line 568
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 555
    .end local v1    # "ex":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 562
    :catch_1
    move-exception v0

    .line 563
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_5
    const-string v2, "FmRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopRecorder, IllegalStateException ocurr "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRecorder;->setError(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 566
    :try_start_6
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 567
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/fmradio/FmRecorder;->setState(I)V

    .line 568
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 565
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v2

    .line 566
    iget-object v3, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 567
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lcom/android/fmradio/FmRecorder;->setState(I)V

    .line 568
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 569
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method public discardRecording()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 274
    const-string v0, "FmRecorder"

    const-string v1, "discardRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/android/fmradio/FmRecorder;->stopRecorder()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/fmradio/FmRecorder;->mIsRecordingFileSaved:Z

    if-nez v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    const-string v0, "FmRecorder"

    const-string v1, "discardRecording, delete file failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 285
    iput-wide v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordStartTime:J

    .line 286
    iput-wide v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordTime:J

    .line 288
    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRecorder;->setState(I)V

    .line 289
    return-void
.end method

.method public getRecordFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "fileName":Ljava/lang/String;
    const-string v2, ".m4a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, "index":I
    if-lez v1, :cond_0

    .line 236
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 240
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordTime()J
    .locals 4

    .prologue
    .line 211
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/fmradio/FmRecorder;->mRecordTime:J

    .line 214
    :cond_0
    iget-wide v0, p0, Lcom/android/fmradio/FmRecorder;->mRecordTime:J

    return-wide v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    return v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 334
    const-string v0, "FmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError, what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0}, Lcom/android/fmradio/FmRecorder;->stopRecorder()V

    .line 336
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRecorder;->setError(I)V

    .line 337
    const/4 v0, 0x6

    iget v1, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    if-ne v0, v1, :cond_0

    .line 338
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/fmradio/FmRecorder;->setState(I)V

    .line 340
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 344
    const-string v0, "FmRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onInfo: what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/16 v0, 0x320

    if-eq p2, v0, :cond_0

    .line 346
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1

    .line 347
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/fmradio/FmRecorder;->onError(Landroid/media/MediaRecorder;II)V

    .line 349
    :cond_1
    return-void
.end method

.method public registerRecorderStateListener(Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/fmradio/FmRecorder;->mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    .line 298
    return-void
.end method

.method public resetRecorder()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 355
    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 357
    iput-object v1, p0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 359
    :cond_0
    iput-object v1, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 360
    iput-wide v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordStartTime:J

    .line 361
    iput-wide v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordTime:J

    .line 362
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    .line 363
    return-void
.end method

.method public saveRecording(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v2, "FmRecorder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveRecording, newName = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    if-nez v2, :cond_0

    .line 252
    const-string v2, "FmRecorder"

    const-string v3, "saveRecording, recording file is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-boolean v2, p0, Lcom/android/fmradio/FmRecorder;->mIsRecordingFileSaved:Z

    if-eqz v2, :cond_1

    .line 257
    const-string v2, "FmRecorder"

    const-string v3, "saveRecording, recording has been saved"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 260
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".m4a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .local v0, "newRecordFile":Ljava/io/File;
    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 262
    .local v1, "succuss":Z
    if-eqz v1, :cond_2

    .line 263
    iput-object v0, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 265
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/fmradio/FmRecorder;->mIsRecordingFileSaved:Z

    .line 267
    invoke-direct {p0, p1}, Lcom/android/fmradio/FmRecorder;->addRecordingToDatabase(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public startRecording(Landroid/content/Context;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string v19, "FmRecorder"

    const-string v20, "startRecording"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/fmradio/FmRecorder;->mRecordTime:J

    .line 96
    const-string v19, "mounted"

    invoke-static/range {p1 .. p1}, Lcom/android/fmradio/FmUtils;->getDefaultStorageState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 97
    const-string v19, "FmRecorder"

    const-string v20, "startRecording, no external storage available"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/FmRecorder;->setError(I)V

    .line 177
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/fmradio/FmUtils;->getDefaultStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "recordingSdcard":Ljava/lang/String;
    invoke-static {v13}, Lcom/android/fmradio/FmUtils;->hasEnoughSpace(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    .line 106
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/FmRecorder;->setError(I)V

    .line 107
    const-string v19, "FmRecorder"

    const-string v20, "startRecording, SD card does not have sufficient space!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 112
    :cond_1
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v15, "sdDir":Ljava/io/File;
    new-instance v12, Ljava/io/File;

    const-string v19, "Records"

    move-object/from16 v0, v19

    invoke-direct {v12, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v12, "recordingDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v19

    if-nez v19, :cond_2

    .line 116
    const-string v19, "FmRecorder"

    const-string v20, "startRecording, a file with name \"FM Recording\" already exists!!"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/FmRecorder;->setError(I)V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v19

    if-nez v19, :cond_3

    .line 120
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    move-result v10

    .line 121
    .local v10, "mkdirResult":Z
    if-nez v10, :cond_3

    .line 122
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/FmRecorder;->setError(I)V

    goto :goto_0

    .line 127
    .end local v10    # "mkdirResult":Z
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 128
    .local v6, "curTime":J
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 129
    .local v8, "date":Ljava/util/Date;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v19, "MMddyyyy_HHmmss"

    .line 130
    sget-object v20, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 129
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 131
    .local v16, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    .line 132
    .local v18, "time":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .local v17, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".m4a"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 135
    .local v11, "name":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".m4a"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/fmradio/FmRecorder;->createRecordFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 136
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v12, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    .line 138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 139
    const-string v19, "FmRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "startRecording, createNewFile success with path "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 139
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_4
    :try_start_1
    new-instance v19, Landroid/media/MediaRecorder;

    invoke-direct/range {v19 .. v19}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x7ce

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 156
    const v14, 0xac44

    .line 157
    .local v14, "samplingRate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const v20, 0xac44

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 158
    const v5, 0x1f400

    .line 159
    .local v5, "bitRate":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const v20, 0x1f400

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 160
    const/4 v4, 0x2

    .line 161
    .local v4, "audiochannels":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaRecorder;->prepare()V

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/fmradio/FmRecorder;->mRecordStartTime:J

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/fmradio/FmRecorder;->mRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/media/MediaRecorder;->start()V

    .line 166
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/fmradio/FmRecorder;->mIsRecordingFileSaved:Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 176
    const/16 v19, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/FmRecorder;->setState(I)V

    goto/16 :goto_0

    .line 142
    .end local v4    # "audiochannels":I
    .end local v5    # "bitRate":I
    .end local v14    # "samplingRate":I
    :catch_0
    move-exception v9

    .line 143
    .local v9, "e":Ljava/io/IOException;
    const-string v19, "FmRecorder"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "startRecording, IOException while createTempFile: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/FmRecorder;->setError(I)V

    goto/16 :goto_0

    .line 167
    .end local v9    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v9

    .line 168
    .local v9, "e":Ljava/lang/IllegalStateException;
    const-string v19, "FmRecorder"

    const-string v20, "startRecording, IllegalStateException while starting recording!"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/FmRecorder;->setError(I)V

    goto/16 :goto_0

    .line 171
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v9

    .line 172
    .local v9, "e":Ljava/io/IOException;
    const-string v19, "FmRecorder"

    const-string v20, "startRecording, IOException while starting recording!"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/fmradio/FmRecorder;->setError(I)V

    goto/16 :goto_0
.end method

.method public stopRecording(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    const-string v1, "FmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopRecording, mInternalState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v1, 0x6

    iget v2, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    if-eq v1, v2, :cond_0

    .line 185
    const-string v1, "FmRecorder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopRecording, called in wrong state: state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/fmradio/FmRecorder;->mInternalState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "filePath":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/fmradio/FmRecorder;->mRecordStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordTime:J

    .line 190
    invoke-direct {p0}, Lcom/android/fmradio/FmRecorder;->stopRecorder()V

    .line 191
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/fmradio/FmRecorder;->setState(I)V

    .line 192
    invoke-static {}, Lcom/android/fmradio/FmUtils;->isFileInSdcard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/SD card/Records/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    :goto_1
    iget-object v1, p0, Lcom/android/fmradio/FmRecorder;->mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/fmradio/FmRecorder;->mStateListener:Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;

    .line 200
    const v2, 0x7f0900ba

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-interface {v1, v2}, Lcom/android/fmradio/FmRecorder$OnRecorderStateChangedListener;->onShowToast(Ljava/lang/String;)V

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/fmradio/FmRecorder;->getRecordFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/fmradio/FmRecorder;->saveRecording(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Phone/Records/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/fmradio/FmRecorder;->mRecordFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.class final Lcom/avira/android/cropimage/m;
.super Lcom/avira/android/cropimage/r;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 65
    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v12, p9

    invoke-direct/range {v1 .. v13}, Lcom/avira/android/cropimage/r;-><init>(Lcom/avira/android/cropimage/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    .line 66
    return-void
.end method


# virtual methods
.method public final c()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 95
    const/16 v0, 0x140

    const/high16 v1, 0x30000

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/cropimage/m;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

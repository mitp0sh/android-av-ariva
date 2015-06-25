.class final Lcom/avira/android/antivirus/c;
.super Lcom/avira/android/antivirus/bk;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/Antivirus;

.field private final b:Lcom/avira/android/a/c;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z

.field private n:F

.field private o:F


# direct methods
.method public constructor <init>(Lcom/avira/android/antivirus/Antivirus;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 878
    iput-object p1, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-direct {p0}, Lcom/avira/android/antivirus/bk;-><init>()V

    .line 818
    iput-boolean v0, p0, Lcom/avira/android/antivirus/c;->c:Z

    .line 820
    iput v0, p0, Lcom/avira/android/antivirus/c;->d:I

    .line 821
    iput v0, p0, Lcom/avira/android/antivirus/c;->e:I

    .line 879
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/antivirus/c;->b:Lcom/avira/android/a/c;

    .line 880
    return-void
.end method

.method private a(Ljava/io/File;Ljava/util/List;)J
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1205
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 1206
    new-instance v5, Lcom/avira/android/antivirus/d;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/avira/android/antivirus/d;-><init>(Lcom/avira/android/antivirus/c;B)V

    .line 1207
    const-wide/16 v0, 0x0

    .line 1209
    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-wide v2, v0

    .line 1211
    :goto_0
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1213
    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1214
    invoke-virtual {v0, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 1216
    if-eqz v6, :cond_2

    .line 1218
    array-length v7, v6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_2

    aget-object v8, v6, v1

    .line 1220
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1224
    invoke-virtual {v4, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1218
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1226
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1228
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v2, v10

    .line 1229
    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-wide v0, v2

    move-wide v2, v0

    .line 1233
    goto :goto_0

    .line 1234
    :cond_3
    return-wide v2
.end method

.method private a(Ljava/io/File;J)V
    .locals 8

    .prologue
    .line 1125
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 1126
    iget-wide v2, p0, Lcom/avira/android/antivirus/c;->f:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/avira/android/antivirus/c;->f:J

    .line 1127
    iget-wide v2, p0, Lcom/avira/android/antivirus/c;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/avira/android/antivirus/c;->g:J

    .line 1128
    iget-object v0, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # += operator for: Lcom/avira/android/antivirus/Antivirus;->mCurrentScanningTime:J
    invoke-static {v0, p2, p3}, Lcom/avira/android/antivirus/Antivirus;->access$814(Lcom/avira/android/antivirus/Antivirus;J)J

    .line 1130
    iget-wide v0, p0, Lcom/avira/android/antivirus/c;->f:J

    iget-object v2, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mCurrentScanningTime:J
    invoke-static {v2}, Lcom/avira/android/antivirus/Antivirus;->access$800(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/avira/android/antivirus/c;->g:J

    div-long/2addr v0, v2

    .line 1133
    iget-wide v2, p0, Lcom/avira/android/antivirus/c;->g:J

    const-wide/32 v4, 0x989680

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J
    invoke-static {v2}, Lcom/avira/android/antivirus/Antivirus;->access$900(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    .line 1135
    :cond_0
    const-wide/16 v2, 0x1e

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1149
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # -= operator for: Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J
    invoke-static {v2, p2, p3}, Lcom/avira/android/antivirus/Antivirus;->access$922(Lcom/avira/android/antivirus/Antivirus;J)J

    .line 1151
    iget-object v2, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J
    invoke-static {v2}, Lcom/avira/android/antivirus/Antivirus;->access$900(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J
    invoke-static {v2}, Lcom/avira/android/antivirus/Antivirus;->access$900(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 1153
    :cond_2
    iget-object v2, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # setter for: Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J
    invoke-static {v2, v0, v1}, Lcom/avira/android/antivirus/Antivirus;->access$902(Lcom/avira/android/antivirus/Antivirus;J)J

    .line 1157
    :cond_3
    iget v0, p0, Lcom/avira/android/antivirus/c;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/avira/android/antivirus/c;->e:I

    .line 1159
    iget-boolean v0, p0, Lcom/avira/android/antivirus/c;->l:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/avira/android/antivirus/c;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/avira/android/antivirus/c;->j:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_1
    iput v0, p0, Lcom/avira/android/antivirus/c;->n:F

    .line 1160
    iget-boolean v0, p0, Lcom/avira/android/antivirus/c;->m:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/avira/android/antivirus/c;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/avira/android/antivirus/c;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/avira/android/antivirus/c;->o:F

    .line 1161
    const/4 v0, 0x0

    .line 1162
    iget-boolean v1, p0, Lcom/avira/android/antivirus/c;->l:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/avira/android/antivirus/c;->m:Z

    if-eqz v1, :cond_9

    .line 1163
    const/high16 v0, 0x42860000    # 67.0f

    iget v1, p0, Lcom/avira/android/antivirus/c;->n:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x42040000    # 33.0f

    iget v2, p0, Lcom/avira/android/antivirus/c;->o:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1168
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mScanNotificationHelper:Lcom/avira/android/antivirus/bg;
    invoke-static {v1}, Lcom/avira/android/antivirus/Antivirus;->access$700(Lcom/avira/android/antivirus/Antivirus;)Lcom/avira/android/antivirus/bg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/bg;->b(I)V

    .line 1170
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v1, "Antivirus: Message sent"

    const-string v2, "%d progress=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J
    invoke-static {v5}, Lcom/avira/android/antivirus/Antivirus;->access$900(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    iget-object v1, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J
    invoke-static {v1}, Lcom/avira/android/antivirus/Antivirus;->access$900(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/avira/android/antivirus/c;->a(IJ)V

    .line 1180
    return-void

    .line 1138
    :cond_5
    iget-wide v2, p0, Lcom/avira/android/antivirus/c;->g:J

    const-wide/32 v4, 0x1312d00

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    .line 1140
    const-wide/16 v2, 0x14

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    goto/16 :goto_0

    .line 1143
    :cond_6
    iget-wide v2, p0, Lcom/avira/android/antivirus/c;->g:J

    const-wide/32 v4, 0x1c9c380

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1145
    const-wide/16 v2, 0xa

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    add-long/2addr v0, v2

    goto/16 :goto_0

    .line 1159
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1160
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .line 1164
    :cond_9
    iget-boolean v1, p0, Lcom/avira/android/antivirus/c;->l:Z

    if-eqz v1, :cond_a

    .line 1165
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcom/avira/android/antivirus/c;->n:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_3

    .line 1166
    :cond_a
    iget-boolean v1, p0, Lcom/avira/android/antivirus/c;->m:Z

    if-eqz v1, :cond_4

    .line 1167
    const/high16 v0, 0x42c80000    # 100.0f

    iget v1, p0, Lcom/avira/android/antivirus/c;->o:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_3
.end method

.method private a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 1114
    iget-object v0, p0, Lcom/avira/android/antivirus/c;->b:Lcom/avira/android/a/c;

    invoke-virtual {v0}, Lcom/avira/android/a/c;->b()Ljava/util/Collection;

    move-result-object v0

    .line 1115
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/a/b;

    .line 1117
    invoke-virtual {v0}, Lcom/avira/android/a/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 1118
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    iget-wide v4, p0, Lcom/avira/android/antivirus/c;->f:J

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/avira/android/utilities/h;->a(Ljava/io/File;)J

    move-result-wide v0

    add-long/2addr v0, v6

    :goto_1
    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/avira/android/antivirus/c;->f:J

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_1

    .line 1121
    :cond_1
    return-void
.end method

.method private q()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 988
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    .line 989
    const-string v3, "av_settings_scan_files"

    invoke-static {v0, v3, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/avira/android/antivirus/c;->m:Z

    .line 991
    const-string v3, "av_settings_scan_apps"

    invoke-static {v0, v3, v2}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avira/android/antivirus/c;->l:Z

    .line 995
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    const/16 v3, 0x2f

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 997
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1000
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1001
    const-string v4, "/mnt/asec"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1002
    const-string v4, "/storage/emulated"

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1004
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # setter for: Lcom/avira/android/antivirus/Antivirus;->mCurrentScanningTime:J
    invoke-static {v3, v6, v7}, Lcom/avira/android/antivirus/Antivirus;->access$802(Lcom/avira/android/antivirus/Antivirus;J)J

    .line 1005
    iput-wide v6, p0, Lcom/avira/android/antivirus/c;->f:J

    .line 1006
    iput-wide v6, p0, Lcom/avira/android/antivirus/c;->g:J

    .line 1007
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # setter for: Lcom/avira/android/antivirus/Antivirus;->mPreviousEstimatedTime:J
    invoke-static {v3, v6, v7}, Lcom/avira/android/antivirus/Antivirus;->access$902(Lcom/avira/android/antivirus/Antivirus;J)J

    .line 1009
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    iget-boolean v3, p0, Lcom/avira/android/antivirus/c;->m:Z

    if-eqz v3, :cond_0

    .line 1012
    iget-wide v6, p0, Lcom/avira/android/antivirus/c;->f:J

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3, v4}, Lcom/avira/android/antivirus/c;->a(Ljava/io/File;Ljava/util/List;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/avira/android/antivirus/c;->f:J

    .line 1015
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    iget-boolean v3, p0, Lcom/avira/android/antivirus/c;->l:Z

    if-eqz v3, :cond_1

    .line 1017
    invoke-direct {p0, v0}, Lcom/avira/android/antivirus/c;->a(Ljava/util/List;)V

    .line 1022
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/avira/android/antivirus/c;->j:I

    .line 1023
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/avira/android/antivirus/c;->k:I

    .line 1024
    iget v3, p0, Lcom/avira/android/antivirus/c;->j:I

    iget v5, p0, Lcom/avira/android/antivirus/c;->k:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/avira/android/antivirus/c;->d:I

    .line 1029
    iput v1, p0, Lcom/avira/android/antivirus/c;->h:I

    .line 1030
    iput v1, p0, Lcom/avira/android/antivirus/c;->i:I

    .line 1031
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mScanNotificationHelper:Lcom/avira/android/antivirus/bg;
    invoke-static {v3}, Lcom/avira/android/antivirus/Antivirus;->access$700(Lcom/avira/android/antivirus/Antivirus;)Lcom/avira/android/antivirus/bg;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avira/android/antivirus/bg;->a()V

    .line 1033
    iget-boolean v3, p0, Lcom/avira/android/antivirus/c;->l:Z

    if-eqz v3, :cond_3

    .line 1035
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1038
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/Antivirus;->isHalting()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 1081
    :goto_1
    return v0

    .line 1044
    :cond_2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1045
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    iget-object v8, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J
    invoke-static {v8}, Lcom/avira/android/antivirus/Antivirus;->access$000(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v8

    # invokes: Lcom/avira/android/antivirus/Antivirus;->scan(Ljava/lang/String;J)I
    invoke-static {v3, v0, v8, v9}, Lcom/avira/android/antivirus/Antivirus;->access$500(Lcom/avira/android/antivirus/Antivirus;Ljava/lang/String;J)I

    .line 1047
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-direct {p0, v3, v6, v7}, Lcom/avira/android/antivirus/c;->a(Ljava/io/File;J)V

    .line 1048
    iget v3, p0, Lcom/avira/android/antivirus/c;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/avira/android/antivirus/c;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1050
    :catch_0
    move-exception v3

    .line 1052
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v6

    const-string v7, "AV"

    const-string v8, "error accessing %s (%s)"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v0, v9, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1057
    :cond_3
    iget-boolean v0, p0, Lcom/avira/android/antivirus/c;->m:Z

    if-eqz v0, :cond_5

    .line 1060
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1062
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/Antivirus;->isHalting()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 1064
    goto :goto_1

    .line 1068
    :cond_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1069
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J
    invoke-static {v8}, Lcom/avira/android/antivirus/Antivirus;->access$000(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v8

    # invokes: Lcom/avira/android/antivirus/Antivirus;->scan(Ljava/lang/String;J)I
    invoke-static {v3, v5, v8, v9}, Lcom/avira/android/antivirus/Antivirus;->access$500(Lcom/avira/android/antivirus/Antivirus;Ljava/lang/String;J)I

    .line 1071
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    invoke-direct {p0, v0, v6, v7}, Lcom/avira/android/antivirus/c;->a(Ljava/io/File;J)V

    .line 1072
    iget v3, p0, Lcom/avira/android/antivirus/c;->i:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/avira/android/antivirus/c;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1074
    :catch_1
    move-exception v3

    .line 1076
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v5

    const-string v6, "AV"

    const-string v7, "error accessing %s (%s)"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v0, v8, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 1081
    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 831
    iget-boolean v0, p0, Lcom/avira/android/antivirus/c;->c:Z

    return v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 846
    iget v0, p0, Lcom/avira/android/antivirus/c;->d:I

    return v0
.end method

.method protected final c()J
    .locals 2

    .prologue
    .line 856
    iget-wide v0, p0, Lcom/avira/android/antivirus/c;->f:J

    return-wide v0
.end method

.method protected final d()J
    .locals 2

    .prologue
    .line 861
    iget-wide v0, p0, Lcom/avira/android/antivirus/c;->g:J

    return-wide v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/avira/android/antivirus/c;->e:I

    return v0
.end method

.method public final run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/avira/android/antivirus/Antivirus;->access$200(Lcom/avira/android/antivirus/Antivirus;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 894
    const/4 v1, 0x0

    iput v1, p0, Lcom/avira/android/antivirus/c;->d:I

    .line 895
    const/4 v1, 0x0

    iput v1, p0, Lcom/avira/android/antivirus/c;->e:I

    .line 896
    invoke-virtual {p0}, Lcom/avira/android/antivirus/c;->n()V

    .line 898
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avira.android.ACTION_SCAN_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Intent;)V

    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/avira/android/antivirus/c;->a(J)V

    .line 901
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/avira/android/antivirus/c;->c:Z

    .line 902
    invoke-direct {p0}, Lcom/avira/android/antivirus/c;->q()Z

    move-result v1

    .line 903
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/avira/android/antivirus/c;->c:Z

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/avira/android/antivirus/c;->b(J)V

    .line 909
    invoke-static {}, Lcom/avira/android/firstscan/a;->c()Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    .line 911
    invoke-static {}, Lcom/avira/android/firstscan/a;->b()V

    .line 914
    invoke-static {}, Lcom/avira/android/antivirus/f;->a()Lcom/avira/android/antivirus/f;

    invoke-static {}, Lcom/avira/android/antivirus/f;->b()V

    .line 924
    :goto_0
    invoke-virtual {p0}, Lcom/avira/android/antivirus/c;->o()V

    .line 927
    invoke-virtual {p0}, Lcom/avira/android/antivirus/c;->p()Ljava/util/ArrayList;

    move-result-object v2

    .line 928
    invoke-virtual {p0}, Lcom/avira/android/antivirus/c;->g()J

    move-result-wide v4

    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfAppScanFromOnDemandScan()I

    move-result v3

    iget-object v6, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v6}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfFileScanFromOnDemandScan()I

    move-result v6

    invoke-static {v4, v5, v3, v6, v2}, Lcom/avira/android/database/n;->a(JIILjava/util/Collection;)Z

    .line 931
    sget-object v3, Lcom/avira/android/antivirus/e;->ON_DEMAND:Lcom/avira/android/antivirus/e;

    invoke-virtual {p0, v3}, Lcom/avira/android/antivirus/c;->a(Lcom/avira/android/antivirus/e;)V

    .line 932
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/Antivirus;->getOnDemandScanEndTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/Antivirus;->getManualScanResults()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v3}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfFileScanFromOnDemandScan()I

    move-result v3

    iget-object v6, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v6}, Lcom/avira/android/antivirus/Antivirus;->getNumberOfAppScanFromOnDemandScan()I

    move-result v6

    invoke-static {v3, v6, v0, v4, v5}, Lcom/avira/android/d/a;->a(IIIJ)V

    .line 935
    :cond_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 936
    invoke-static {}, Lcom/avira/android/antivirus/f;->a()Lcom/avira/android/antivirus/f;

    invoke-static {v0}, Lcom/avira/android/antivirus/f;->a(Z)Z

    .line 937
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v2, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mScanNotificationHelper:Lcom/avira/android/antivirus/bg;
    invoke-static {v2}, Lcom/avira/android/antivirus/Antivirus;->access$700(Lcom/avira/android/antivirus/Antivirus;)Lcom/avira/android/antivirus/bg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/antivirus/bg;->c()V

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    const-string v3, "av_settings_threats_only"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/avira/android/utilities/ad;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mScanNotificationHelper:Lcom/avira/android/antivirus/bg;
    invoke-static {v1}, Lcom/avira/android/antivirus/Antivirus;->access$700(Lcom/avira/android/antivirus/Antivirus;)Lcom/avira/android/antivirus/bg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/antivirus/bg;->a(I)V

    .line 940
    :cond_2
    :goto_1
    invoke-static {}, Lcom/avira/android/common/a/b;->b()V

    .line 942
    iget-object v0, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mUpdateSettingsWhenIdle:Z
    invoke-static {v0}, Lcom/avira/android/antivirus/Antivirus;->access$600(Lcom/avira/android/antivirus/Antivirus;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 944
    iget-object v0, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/Antivirus;->updateScanEngineSettings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    :cond_3
    iget-object v0, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/avira/android/antivirus/Antivirus;->access$200(Lcom/avira/android/antivirus/Antivirus;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 960
    return-void

    .line 920
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/avira/android/firstscan/a;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 959
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/avira/android/antivirus/Antivirus;->access$200(Lcom/avira/android/antivirus/Antivirus;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0

    .line 937
    :cond_5
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/avira/android/antivirus/c;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mScanNotificationHelper:Lcom/avira/android/antivirus/bg;
    invoke-static {v0}, Lcom/avira/android/antivirus/Antivirus;->access$700(Lcom/avira/android/antivirus/Antivirus;)Lcom/avira/android/antivirus/bg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/antivirus/bg;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

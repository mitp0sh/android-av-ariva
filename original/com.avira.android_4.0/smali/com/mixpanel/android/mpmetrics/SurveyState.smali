.class public Lcom/mixpanel/android/mpmetrics/SurveyState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ANSWERS_BUNDLE_KEY:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.SurveyState.ANSWERS_BUNDLE_KEY"

.field private static final BACKGROUND_COMPRESSED_BUNDLE_KEY:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.SurveyState.BACKGROUND_COMPRESSED_BUNDLE_KEY"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mixpanel/android/mpmetrics/SurveyState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISTINCT_ID_BUNDLE_KEY:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.SurveyState.DISTINCT_ID_BUNDLE_KEY"

.field private static final HIGHLIGHT_COLOR_BUNDLE_KEY:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.SurveyState.HIGHLIGHT_COLOR_BUNDLE_KEY"

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI SurveyState"

.field private static final MAX_LOCK_TIME_MILLIS:J = 0x2932e00L

.field private static final SURVEY_BUNDLE_KEY:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.SurveyState.SURVEY_BUNDLE_KEY"

.field private static final TOKEN_BUNDLE_KEY:Ljava/lang/String; = "com.mixpanel.android.mpmetrics.SurveyState.TOKEN_BUNDLE_KEY"

.field private static g:J

.field private static h:Lcom/mixpanel/android/mpmetrics/SurveyState;

.field private static i:I

.field private static j:J

.field private static k:I

.field private static final sSurveyStateLock:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/mixpanel/android/mpmetrics/ap;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

.field private final e:Landroid/graphics/Bitmap;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 26
    const-class v0, Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->$assertionsDisabled:Z

    .line 235
    new-instance v0, Lcom/mixpanel/android/mpmetrics/au;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/au;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->sSurveyStateLock:Ljava/lang/Object;

    .line 257
    sput-wide v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->g:J

    .line 258
    const/4 v0, 0x0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Lcom/mixpanel/android/mpmetrics/SurveyState;

    .line 259
    sput v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->i:I

    .line 260
    sput-wide v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:J

    .line 261
    const/4 v0, -0x1

    sput v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    return-void

    :cond_0
    move v0, v1

    .line 26
    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.DISTINCT_ID_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->b:Ljava/lang/String;

    .line 156
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.TOKEN_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->c:Ljava/lang/String;

    .line 157
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.HIGHLIGHT_COLOR_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:I

    .line 158
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.ANSWERS_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->d:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    .line 160
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.BACKGROUND_COMPRESSED_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Landroid/graphics/Bitmap;

    .line 167
    :goto_0
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.SURVEY_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    new-instance v0, Lcom/mixpanel/android/mpmetrics/ap;

    invoke-direct {v0, v1}, Lcom/mixpanel/android/mpmetrics/ap;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->a:Lcom/mixpanel/android/mpmetrics/ap;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mixpanel/android/mpmetrics/aq; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Survey serialization resulted in a corrupted parcel"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Survey serialization resulted in a corrupted parcel"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/SurveyState;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/ap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->a:Lcom/mixpanel/android/mpmetrics/ap;

    .line 146
    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->b:Ljava/lang/String;

    .line 147
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->c:Ljava/lang/String;

    .line 148
    new-instance v0, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    invoke-direct {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;-><init>()V

    iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->d:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    .line 149
    iput-object p4, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Landroid/graphics/Bitmap;

    .line 150
    iput p5, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:I

    .line 151
    return-void
.end method

.method public static a(Lcom/mixpanel/android/mpmetrics/SurveyState;I)Lcom/mixpanel/android/mpmetrics/SurveyState;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 69
    sget-boolean v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    sget-wide v4, Lcom/mixpanel/android/mpmetrics/SurveyState;->j:J

    sub-long/2addr v2, v4

    .line 72
    sget-object v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->sSurveyStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    sget v4, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    if-lez v4, :cond_1

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 74
    const/4 v2, -0x1

    sput v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    .line 77
    :cond_1
    sget v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    if-lez v2, :cond_2

    sget v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    if-eq v2, p1, :cond_2

    .line 78
    monitor-exit v1

    move-object p0, v0

    .line 87
    :goto_0
    return-object p0

    .line 79
    :cond_2
    if-eqz p0, :cond_3

    .line 80
    sput p1, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    .line 81
    sput-object p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Lcom/mixpanel/android/mpmetrics/SurveyState;

    .line 82
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 83
    :cond_3
    :try_start_1
    sget-object v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Lcom/mixpanel/android/mpmetrics/SurveyState;

    if-nez v2, :cond_4

    .line 84
    monitor-exit v1

    move-object p0, v0

    goto :goto_0

    .line 86
    :cond_4
    sput p1, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    .line 87
    sget-object p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Lcom/mixpanel/android/mpmetrics/SurveyState;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 60
    sget-object v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->sSurveyStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    sget v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    if-ne p0, v0, :cond_0

    .line 62
    const/4 v0, -0x1

    sput v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Lcom/mixpanel/android/mpmetrics/SurveyState;

    .line 65
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/mixpanel/android/mpmetrics/ap;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 7

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 38
    sget-wide v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->g:J

    sub-long/2addr v0, v2

    .line 39
    sget-object v6, Lcom/mixpanel/android/mpmetrics/SurveyState;->sSurveyStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 40
    :try_start_0
    sget v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->k:I

    if-lez v2, :cond_1

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Lcom/mixpanel/android/mpmetrics/SurveyState;

    .line 44
    :cond_1
    sget-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Lcom/mixpanel/android/mpmetrics/SurveyState;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/mixpanel/android/mpmetrics/SurveyState;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mixpanel/android/mpmetrics/SurveyState;-><init>(Lcom/mixpanel/android/mpmetrics/ap;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/SurveyState;->h:Lcom/mixpanel/android/mpmetrics/SurveyState;

    .line 46
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    sget v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->i:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/mixpanel/android/mpmetrics/SurveyState;->i:I

    .line 51
    const-string v1, "intentID"

    sget v2, Lcom/mixpanel/android/mpmetrics/SurveyState;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 56
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method


# virtual methods
.method public final a()Lcom/mixpanel/android/mpmetrics/ap;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->a:Lcom/mixpanel/android/mpmetrics/ap;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->d:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 99
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.DISTINCT_ID_BUNDLE_KEY"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.TOKEN_BUNDLE_KEY"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.HIGHLIGHT_COLOR_BUNDLE_KEY"

    iget v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->f:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v0, "com.mixpanel.android.mpmetrics.SurveyState.ANSWERS_BUNDLE_KEY"

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->d:Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    const/4 v0, 0x0

    .line 106
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 107
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 108
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->e:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 111
    :cond_0
    const-string v2, "com.mixpanel.android.mpmetrics.SurveyState.BACKGROUND_COMPRESSED_BUNDLE_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 113
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/SurveyState;->a:Lcom/mixpanel/android/mpmetrics/ap;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ap;->a()Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string v2, "com.mixpanel.android.mpmetrics.SurveyState.SURVEY_BUNDLE_KEY"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

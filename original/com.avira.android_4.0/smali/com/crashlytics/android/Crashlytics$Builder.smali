.class public Lcom/crashlytics/android/Crashlytics$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private delay:F

.field private disabled:Z

.field private listener:Lcom/crashlytics/android/CrashlyticsListener;

.field private pinningInfoProvider:Lcom/crashlytics/android/PinningInfoProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->delay:F

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->disabled:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/crashlytics/android/Crashlytics;
    .locals 5

    .prologue
    .line 185
    iget v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->delay:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 186
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->delay:F

    .line 188
    :cond_0
    new-instance v0, Lcom/crashlytics/android/Crashlytics;

    iget v1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->delay:F

    iget-object v2, p0, Lcom/crashlytics/android/Crashlytics$Builder;->listener:Lcom/crashlytics/android/CrashlyticsListener;

    iget-object v3, p0, Lcom/crashlytics/android/Crashlytics$Builder;->pinningInfoProvider:Lcom/crashlytics/android/PinningInfoProvider;

    iget-boolean v4, p0, Lcom/crashlytics/android/Crashlytics$Builder;->disabled:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/Crashlytics;-><init>(FLcom/crashlytics/android/CrashlyticsListener;Lcom/crashlytics/android/PinningInfoProvider;Z)V

    return-object v0
.end method

.method public delay(F)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delay must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->delay:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "delay already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    iput p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->delay:F

    .line 137
    return-object p0
.end method

.method public disabled(Z)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->disabled:Z

    .line 181
    return-object p0
.end method

.method public listener(Lcom/crashlytics/android/CrashlyticsListener;)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 2

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->listener:Lcom/crashlytics/android/CrashlyticsListener;

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->listener:Lcom/crashlytics/android/CrashlyticsListener;

    .line 152
    return-object p0
.end method

.method public pinningInfo(Lcom/crashlytics/android/PinningInfoProvider;)Lcom/crashlytics/android/Crashlytics$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pinningInfoProvider must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/Crashlytics$Builder;->pinningInfoProvider:Lcom/crashlytics/android/PinningInfoProvider;

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pinningInfoProvider already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    iput-object p1, p0, Lcom/crashlytics/android/Crashlytics$Builder;->pinningInfoProvider:Lcom/crashlytics/android/PinningInfoProvider;

    .line 170
    return-object p0
.end method

.class public final Lcom/crashlytics/android/answers/SessionEventMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final advertisingId:Ljava/lang/String;

.field public final androidId:Ljava/lang/String;

.field public final appBundleId:Ljava/lang/String;

.field public final appVersionCode:Ljava/lang/String;

.field public final appVersionName:Ljava/lang/String;

.field public final betaDeviceToken:Ljava/lang/String;

.field public final buildId:Ljava/lang/String;

.field public final deviceModel:Ljava/lang/String;

.field public final executionId:Ljava/lang/String;

.field public final installationId:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appBundleId:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->executionId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->installationId:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->androidId:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->advertisingId:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->betaDeviceToken:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->buildId:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->osVersion:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->deviceModel:Ljava/lang/String;

    .line 34
    iput-object p10, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appVersionCode:Ljava/lang/String;

    .line 35
    iput-object p11, p0, Lcom/crashlytics/android/answers/SessionEventMetadata;->appVersionName:Ljava/lang/String;

    .line 36
    return-void
.end method

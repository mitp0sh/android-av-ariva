.class public Lcom/crashlytics/android/internal/models/ThreadData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final IMPORTANCE_CRASHED_THREAD:I = 0x4


# instance fields
.field public final frames:[Lcom/crashlytics/android/internal/models/ThreadData$FrameData;

.field public final importance:I


# direct methods
.method public constructor <init>(I[Lcom/crashlytics/android/internal/models/ThreadData$FrameData;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/crashlytics/android/internal/models/ThreadData;->frames:[Lcom/crashlytics/android/internal/models/ThreadData$FrameData;

    .line 70
    iput p1, p0, Lcom/crashlytics/android/internal/models/ThreadData;->importance:I

    .line 71
    return-void
.end method

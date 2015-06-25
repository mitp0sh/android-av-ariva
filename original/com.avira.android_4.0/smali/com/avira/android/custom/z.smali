.class public final enum Lcom/avira/android/custom/z;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/custom/z;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/custom/z;

.field public static final enum AboutContent:Lcom/avira/android/custom/z;

.field public static final enum CleanDetectionContent:Lcom/avira/android/custom/z;

.field public static final enum DetectionWarningContent:Lcom/avira/android/custom/z;

.field public static final enum TwoLineContent:Lcom/avira/android/custom/z;

.field public static final enum TwoLineRegularHeaderContent:Lcom/avira/android/custom/z;

.field public static final enum WebviewContent:Lcom/avira/android/custom/z;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/avira/android/custom/z;

    const-string v1, "AboutContent"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/custom/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/z;->AboutContent:Lcom/avira/android/custom/z;

    new-instance v0, Lcom/avira/android/custom/z;

    const-string v1, "TwoLineContent"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/custom/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    new-instance v0, Lcom/avira/android/custom/z;

    const-string v1, "TwoLineRegularHeaderContent"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/custom/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/z;->TwoLineRegularHeaderContent:Lcom/avira/android/custom/z;

    new-instance v0, Lcom/avira/android/custom/z;

    const-string v1, "WebviewContent"

    invoke-direct {v0, v1, v6}, Lcom/avira/android/custom/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/z;->WebviewContent:Lcom/avira/android/custom/z;

    new-instance v0, Lcom/avira/android/custom/z;

    const-string v1, "DetectionWarningContent"

    invoke-direct {v0, v1, v7}, Lcom/avira/android/custom/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/z;->DetectionWarningContent:Lcom/avira/android/custom/z;

    new-instance v0, Lcom/avira/android/custom/z;

    const-string v1, "CleanDetectionContent"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avira/android/custom/z;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/z;->CleanDetectionContent:Lcom/avira/android/custom/z;

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avira/android/custom/z;

    sget-object v1, Lcom/avira/android/custom/z;->AboutContent:Lcom/avira/android/custom/z;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/custom/z;->TwoLineContent:Lcom/avira/android/custom/z;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/custom/z;->TwoLineRegularHeaderContent:Lcom/avira/android/custom/z;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/custom/z;->WebviewContent:Lcom/avira/android/custom/z;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/custom/z;->DetectionWarningContent:Lcom/avira/android/custom/z;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/custom/z;->CleanDetectionContent:Lcom/avira/android/custom/z;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/custom/z;->$VALUES:[Lcom/avira/android/custom/z;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/custom/z;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/avira/android/custom/z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/z;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/custom/z;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/avira/android/custom/z;->$VALUES:[Lcom/avira/android/custom/z;

    invoke-virtual {v0}, [Lcom/avira/android/custom/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/custom/z;

    return-object v0
.end method

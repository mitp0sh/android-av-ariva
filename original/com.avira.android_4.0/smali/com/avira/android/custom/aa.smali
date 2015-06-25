.class public final enum Lcom/avira/android/custom/aa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/custom/aa;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/custom/aa;

.field public static final enum ErrorIcon:Lcom/avira/android/custom/aa;

.field public static final enum InfoIcon:Lcom/avira/android/custom/aa;

.field public static final enum WarningIcon:Lcom/avira/android/custom/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lcom/avira/android/custom/aa;

    const-string v1, "ErrorIcon"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/custom/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/aa;->ErrorIcon:Lcom/avira/android/custom/aa;

    new-instance v0, Lcom/avira/android/custom/aa;

    const-string v1, "WarningIcon"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/custom/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    new-instance v0, Lcom/avira/android/custom/aa;

    const-string v1, "InfoIcon"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/custom/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/aa;->InfoIcon:Lcom/avira/android/custom/aa;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avira/android/custom/aa;

    sget-object v1, Lcom/avira/android/custom/aa;->ErrorIcon:Lcom/avira/android/custom/aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/custom/aa;->WarningIcon:Lcom/avira/android/custom/aa;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/custom/aa;->InfoIcon:Lcom/avira/android/custom/aa;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avira/android/custom/aa;->$VALUES:[Lcom/avira/android/custom/aa;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/custom/aa;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/avira/android/custom/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/aa;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/custom/aa;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/avira/android/custom/aa;->$VALUES:[Lcom/avira/android/custom/aa;

    invoke-virtual {v0}, [Lcom/avira/android/custom/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/custom/aa;

    return-object v0
.end method

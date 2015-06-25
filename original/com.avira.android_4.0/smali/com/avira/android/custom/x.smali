.class public final enum Lcom/avira/android/custom/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/custom/x;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/custom/x;

.field public static final enum CloseButton:Lcom/avira/android/custom/x;

.field public static final enum DeleteCancelButtons:Lcom/avira/android/custom/x;

.field public static final enum DeleteCloseButtons:Lcom/avira/android/custom/x;

.field public static final enum OkButton:Lcom/avira/android/custom/x;

.field public static final enum OkCancelButtons:Lcom/avira/android/custom/x;

.field public static final enum SaveCancelButtons:Lcom/avira/android/custom/x;

.field public static final enum UninstallCloseButtons:Lcom/avira/android/custom/x;

.field public static final enum YesNoButtons:Lcom/avira/android/custom/x;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    new-instance v0, Lcom/avira/android/custom/x;

    const-string v1, "OkButton"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/custom/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    new-instance v0, Lcom/avira/android/custom/x;

    const-string v1, "OkCancelButtons"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/custom/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/x;->OkCancelButtons:Lcom/avira/android/custom/x;

    new-instance v0, Lcom/avira/android/custom/x;

    const-string v1, "YesNoButtons"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/custom/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/x;->YesNoButtons:Lcom/avira/android/custom/x;

    new-instance v0, Lcom/avira/android/custom/x;

    const-string v1, "CloseButton"

    invoke-direct {v0, v1, v6}, Lcom/avira/android/custom/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/x;->CloseButton:Lcom/avira/android/custom/x;

    new-instance v0, Lcom/avira/android/custom/x;

    const-string v1, "DeleteCancelButtons"

    invoke-direct {v0, v1, v7}, Lcom/avira/android/custom/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/x;->DeleteCancelButtons:Lcom/avira/android/custom/x;

    new-instance v0, Lcom/avira/android/custom/x;

    const-string v1, "SaveCancelButtons"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avira/android/custom/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/x;->SaveCancelButtons:Lcom/avira/android/custom/x;

    new-instance v0, Lcom/avira/android/custom/x;

    const-string v1, "DeleteCloseButtons"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/avira/android/custom/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/x;->DeleteCloseButtons:Lcom/avira/android/custom/x;

    new-instance v0, Lcom/avira/android/custom/x;

    const-string v1, "UninstallCloseButtons"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/avira/android/custom/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/custom/x;->UninstallCloseButtons:Lcom/avira/android/custom/x;

    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/avira/android/custom/x;

    sget-object v1, Lcom/avira/android/custom/x;->OkButton:Lcom/avira/android/custom/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/custom/x;->OkCancelButtons:Lcom/avira/android/custom/x;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/custom/x;->YesNoButtons:Lcom/avira/android/custom/x;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/custom/x;->CloseButton:Lcom/avira/android/custom/x;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/custom/x;->DeleteCancelButtons:Lcom/avira/android/custom/x;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/custom/x;->SaveCancelButtons:Lcom/avira/android/custom/x;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/custom/x;->DeleteCloseButtons:Lcom/avira/android/custom/x;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avira/android/custom/x;->UninstallCloseButtons:Lcom/avira/android/custom/x;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/custom/x;->$VALUES:[Lcom/avira/android/custom/x;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/custom/x;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/avira/android/custom/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/custom/x;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/custom/x;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/avira/android/custom/x;->$VALUES:[Lcom/avira/android/custom/x;

    invoke-virtual {v0}, [Lcom/avira/android/custom/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/custom/x;

    return-object v0
.end method

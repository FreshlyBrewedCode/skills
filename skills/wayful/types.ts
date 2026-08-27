type Project = {
  maps: WayfulMap[]
}

type WayfulMap = {
  steps: Step[]
}

type Step = {
  type: StepTypeId
  dependsOn: Step[]
  inputs: Artifact[]
  outputs: Artifact[]
}

type StepTypeId = string
type StepType = {
  id: StepTypeId
  description: string
  inputs: ArtifactDescription[]
  output: ArtifactDescription[]
}

type ArtifactDescription = {
  type: ArtifactType
  description: string
  required: boolean
}

type ArtifactType = string

type Artifact = {
  type: ArtifactType
  description: string
  data: any
}
